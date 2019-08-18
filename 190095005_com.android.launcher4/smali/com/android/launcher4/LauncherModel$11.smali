.class Lcom/android/launcher4/LauncherModel$11;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cr:Landroid/content/ContentResolver;

.field private final synthetic val$item:Lcom/android/launcher4/ItemInfo;

.field private final synthetic val$uriToDelete:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/android/launcher4/ItemInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$11;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$11;->val$uriToDelete:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/launcher4/LauncherModel$11;->val$item:Lcom/android/launcher4/ItemInfo;

    .line 1099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1101
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel$11;->val$cr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$11;->val$uriToDelete:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1104
    sget-object v3, Lcom/android/launcher4/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1105
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel$11;->val$item:Lcom/android/launcher4/ItemInfo;

    iget v2, v2, Lcom/android/launcher4/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 1129
    :goto_0
    :pswitch_0
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/launcher4/LauncherModel$11;->val$item:Lcom/android/launcher4/ItemInfo;

    iget-wide v4, v4, Lcom/android/launcher4/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/launcher4/LauncherModel$11;->val$item:Lcom/android/launcher4/ItemInfo;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    monitor-exit v3

    .line 1132
    return-void

    .line 1107
    :pswitch_1
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/launcher4/LauncherModel$11;->val$item:Lcom/android/launcher4/ItemInfo;

    iget-wide v4, v4, Lcom/android/launcher4/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1119
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher4/LauncherModel$11;->val$item:Lcom/android/launcher4/ItemInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1104
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1108
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/ItemInfo;

    .line 1109
    .local v0, "info":Lcom/android/launcher4/ItemInfo;
    iget-wide v4, v0, Lcom/android/launcher4/ItemInfo;->container:J

    iget-object v6, p0, Lcom/android/launcher4/LauncherModel$11;->val$item:Lcom/android/launcher4/ItemInfo;

    iget-wide v6, v6, Lcom/android/launcher4/ItemInfo;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1113
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deleting a folder ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher4/LauncherModel$11;->val$item:Lcom/android/launcher4/ItemInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1114
    const-string v5, ") which still "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "contains items ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1115
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1116
    .local v1, "msg":Ljava/lang/String;
    const-string v4, "Launcher.Model"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1123
    .end local v0    # "info":Lcom/android/launcher4/ItemInfo;
    .end local v1    # "msg":Ljava/lang/String;
    :pswitch_2
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher4/LauncherModel$11;->val$item:Lcom/android/launcher4/ItemInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1126
    :pswitch_3
    sget-object v4, Lcom/android/launcher4/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher4/LauncherModel$11;->val$item:Lcom/android/launcher4/ItemInfo;

    check-cast v2, Lcom/android/launcher4/LauncherAppWidgetInfo;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
