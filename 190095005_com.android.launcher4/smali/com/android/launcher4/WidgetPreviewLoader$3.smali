.class Lcom/android/launcher4/WidgetPreviewLoader$3;
.super Landroid/os/AsyncTask;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/WidgetPreviewLoader;->removeItemFromDb(Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;Ljava/lang/String;)V
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

.field private final synthetic val$objectName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/WidgetPreviewLoader$3;->val$cacheDb:Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

    iput-object p2, p0, Lcom/android/launcher4/WidgetPreviewLoader$3;->val$objectName:Ljava/lang/String;

    .line 360
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher4/WidgetPreviewLoader$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 362
    iget-object v1, p0, Lcom/android/launcher4/WidgetPreviewLoader$3;->val$cacheDb:Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v1}, Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 363
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "shortcut_and_widget_previews"

    .line 364
    const-string v2, "name = ? "

    .line 365
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher4/WidgetPreviewLoader$3;->val$objectName:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 363
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 366
    const/4 v1, 0x0

    return-object v1
.end method
