.class Lcom/android/launcher4/LauncherModel$13;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel;->deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher4/FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cr:Landroid/content/ContentResolver;

.field private final synthetic val$info:Lcom/android/launcher4/FolderInfo;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/android/launcher4/FolderInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$13;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$13;->val$info:Lcom/android/launcher4/FolderInfo;

    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1190
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$13;->val$cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/launcher4/LauncherModel$13;->val$info:Lcom/android/launcher4/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher4/FolderInfo;->id:J

    .line 1191
    const/4 v4, 0x0

    .line 1190
    invoke-static {v2, v3, v4}, Lcom/android/launcher4/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1193
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1194
    :try_start_0
    sget-object v1, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$13;->val$info:Lcom/android/launcher4/FolderInfo;

    iget-wide v4, v3, Lcom/android/launcher4/FolderInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    sget-object v1, Lcom/android/launcher4/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$13;->val$info:Lcom/android/launcher4/FolderInfo;

    iget-wide v4, v3, Lcom/android/launcher4/FolderInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget-object v1, Lcom/android/launcher4/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$13;->val$info:Lcom/android/launcher4/FolderInfo;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    sget-object v1, Lcom/android/launcher4/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher4/LauncherModel$13;->val$info:Lcom/android/launcher4/FolderInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1193
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$13;->val$cr:Landroid/content/ContentResolver;

    .line 1201
    sget-object v2, Lcom/android/launcher4/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    .line 1202
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "container="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher4/LauncherModel$13;->val$info:Lcom/android/launcher4/FolderInfo;

    iget-wide v4, v4, Lcom/android/launcher4/FolderInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1200
    invoke-virtual {v1, v2, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1205
    sget-object v2, Lcom/android/launcher4/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1206
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$13;->val$info:Lcom/android/launcher4/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher4/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1205
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1211
    return-void

    .line 1193
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1206
    :cond_0
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/ItemInfo;

    .line 1207
    .local v0, "childInfo":Lcom/android/launcher4/ItemInfo;
    sget-object v3, Lcom/android/launcher4/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/android/launcher4/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object v3, Lcom/android/launcher4/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1205
    .end local v0    # "childInfo":Lcom/android/launcher4/ItemInfo;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
