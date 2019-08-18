.class Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheDb"
.end annotation


# static fields
.field static final COLUMN_NAME:Ljava/lang/String; = "name"

.field static final COLUMN_PREVIEW_BITMAP:Ljava/lang/String; = "preview_bitmap"

.field static final COLUMN_SIZE:Ljava/lang/String; = "size"

.field static final DB_NAME:Ljava/lang/String; = "widgetpreviews.db"

.field static final DB_VERSION:I = 0x2

.field static final TABLE_NAME:Ljava/lang/String; = "shortcut_and_widget_previews"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "widgetpreviews.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 269
    iput-object p1, p0, Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;->mContext:Landroid/content/Context;

    .line 270
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 274
    const-string v0, "CREATE TABLE IF NOT EXISTS shortcut_and_widget_previews (name TEXT NOT NULL, size TEXT NOT NULL, preview_bitmap BLOB NOT NULL, PRIMARY KEY (name, size) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 284
    if-eq p2, p3, :cond_0

    .line 286
    const-string v0, "DELETE FROM shortcut_and_widget_previews"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 288
    :cond_0
    return-void
.end method
