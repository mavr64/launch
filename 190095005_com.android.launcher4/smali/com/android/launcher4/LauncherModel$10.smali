.class Lcom/android/launcher4/LauncherModel$10;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cr:Landroid/content/ContentResolver;

.field private final synthetic val$item:Lcom/android/launcher4/ItemInfo;

.field private final synthetic val$notify:Z

.field private final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/android/launcher4/ItemInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$10;->val$cr:Landroid/content/ContentResolver;

    iput-boolean p2, p0, Lcom/android/launcher4/LauncherModel$10;->val$notify:Z

    iput-object p3, p0, Lcom/android/launcher4/LauncherModel$10;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/launcher4/LauncherModel$10;->val$item:Lcom/android/launcher4/ItemInfo;

    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1040
    iget-object v2, p0, Lcom/android/launcher4/LauncherModel$10;->val$cr:Landroid/content/ContentResolver;

    .line 1041
    iget-boolean v1, p0, Lcom/android/launcher4/LauncherModel$10;->val$notify:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher4/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 1043
    :goto_0
    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$10;->val$values:Landroid/content/ContentValues;

    .line 1040
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1046
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1047
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$10;->val$item:Lcom/android/launcher4/ItemInfo;

    iget-wide v4, v1, Lcom/android/launcher4/ItemInfo;->id:J

    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$10;->val$item:Lcom/android/launcher4/ItemInfo;

    const/4 v3, 0x0

    invoke-static {v4, v5, v1, v3}, Lcom/android/launcher4/LauncherModel;->checkItemInfoLocked(JLcom/android/launcher4/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 1048
    sget-object v1, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$10;->val$item:Lcom/android/launcher4/ItemInfo;

    iget-wide v4, v3, Lcom/android/launcher4/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher4/LauncherModel$10;->val$item:Lcom/android/launcher4/ItemInfo;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$10;->val$item:Lcom/android/launcher4/ItemInfo;

    iget v1, v1, Lcom/android/launcher4/ItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    .line 1046
    :cond_0
    :goto_1
    :pswitch_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    return-void

    .line 1042
    :cond_1
    sget-object v1, Lcom/android/launcher4/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_0

    .line 1051
    :pswitch_1
    :try_start_1
    sget-object v3, Lcom/android/launcher4/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$10;->val$item:Lcom/android/launcher4/ItemInfo;

    iget-wide v4, v1, Lcom/android/launcher4/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$10;->val$item:Lcom/android/launcher4/ItemInfo;

    check-cast v1, Lcom/android/launcher4/FolderInfo;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$10;->val$item:Lcom/android/launcher4/ItemInfo;

    iget-wide v4, v1, Lcom/android/launcher4/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    .line 1056
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$10;->val$item:Lcom/android/launcher4/ItemInfo;

    iget-wide v4, v1, Lcom/android/launcher4/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    .line 1057
    :cond_2
    sget-object v1, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$10;->val$item:Lcom/android/launcher4/ItemInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1046
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1059
    :cond_3
    :try_start_2
    sget-object v1, Lcom/android/launcher4/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$10;->val$item:Lcom/android/launcher4/ItemInfo;

    iget-wide v4, v3, Lcom/android/launcher4/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1062
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "adding item: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$10;->val$item:Lcom/android/launcher4/ItemInfo;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1063
    const-string v3, " to a folder that "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1064
    const-string v3, " doesn\'t exist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1062
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1070
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_3
    sget-object v3, Lcom/android/launcher4/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$10;->val$item:Lcom/android/launcher4/ItemInfo;

    check-cast v1, Lcom/android/launcher4/LauncherAppWidgetInfo;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1049
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
