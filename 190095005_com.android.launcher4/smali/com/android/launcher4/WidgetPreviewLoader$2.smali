.class Lcom/android/launcher4/WidgetPreviewLoader$2;
.super Landroid/os/AsyncTask;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/WidgetPreviewLoader;->removePackageFromDb(Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$cacheDb:Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

.field private final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/WidgetPreviewLoader$2;->val$cacheDb:Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

    iput-object p2, p0, Lcom/android/launcher4/WidgetPreviewLoader$2;->val$packageName:Ljava/lang/String;

    .line 341
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher4/WidgetPreviewLoader$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/launcher4/WidgetPreviewLoader$2;->val$cacheDb:Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v1}, Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 344
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "shortcut_and_widget_previews"

    .line 345
    const-string v2, "name LIKE ? OR name LIKE ?"

    .line 347
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Widget:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher4/WidgetPreviewLoader$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Shortcut:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher4/WidgetPreviewLoader$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 344
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 351
    invoke-static {}, Lcom/android/launcher4/WidgetPreviewLoader;->access$1()Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 352
    :try_start_0
    invoke-static {}, Lcom/android/launcher4/WidgetPreviewLoader;->access$1()Ljava/util/HashSet;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher4/WidgetPreviewLoader$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 351
    monitor-exit v2

    .line 354
    const/4 v1, 0x0

    return-object v1

    .line 351
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
