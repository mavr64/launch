.class Lcom/android/launcher4/LauncherModel$12;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/LauncherModel;

.field private final synthetic val$cr:Landroid/content/ContentResolver;

.field private final synthetic val$screensCopy:Ljava/util/ArrayList;

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$12;->this$0:Lcom/android/launcher4/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$12;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/launcher4/LauncherModel$12;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/launcher4/LauncherModel$12;->val$screensCopy:Ljava/util/ArrayList;

    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1160
    iget-object v6, p0, Lcom/android/launcher4/LauncherModel$12;->val$cr:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/android/launcher4/LauncherModel$12;->val$uri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1161
    iget-object v6, p0, Lcom/android/launcher4/LauncherModel$12;->val$screensCopy:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1162
    .local v0, "count":I
    new-array v5, v0, [Landroid/content/ContentValues;

    .line 1163
    .local v5, "values":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1170
    iget-object v6, p0, Lcom/android/launcher4/LauncherModel$12;->val$cr:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/android/launcher4/LauncherModel$12;->val$uri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1172
    sget-object v7, Lcom/android/launcher4/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1173
    :try_start_0
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1174
    sget-object v6, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/launcher4/LauncherModel$12;->val$screensCopy:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1172
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    return-void

    .line 1164
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1165
    .local v4, "v":Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/android/launcher4/LauncherModel$12;->val$screensCopy:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1166
    .local v2, "screenId":J
    const-string v6, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1167
    const-string v6, "screenRank"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1168
    aput-object v4, v5, v1

    .line 1163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1172
    .end local v2    # "screenId":J
    .end local v4    # "v":Landroid/content/ContentValues;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method
