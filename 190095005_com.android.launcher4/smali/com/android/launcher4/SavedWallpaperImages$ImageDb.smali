.class Lcom/android/launcher4/SavedWallpaperImages$ImageDb;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SavedWallpaperImages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/SavedWallpaperImages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageDb"
.end annotation


# static fields
.field static final COLUMN_ID:Ljava/lang/String; = "id"

.field static final COLUMN_IMAGE_FILENAME:Ljava/lang/String; = "image"

.field static final COLUMN_IMAGE_THUMBNAIL_FILENAME:Ljava/lang/String; = "image_thumbnail"

.field static final DB_NAME:Ljava/lang/String; = "saved_wallpaper_images.db"

.field static final DB_VERSION:I = 0x1

.field static final TABLE_NAME:Ljava/lang/String; = "saved_wallpaper_images"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "saved_wallpaper_images.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 223
    iput-object p1, p0, Lcom/android/launcher4/SavedWallpaperImages$ImageDb;->mContext:Landroid/content/Context;

    .line 224
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 228
    const-string v0, "CREATE TABLE IF NOT EXISTS saved_wallpaper_images (id INTEGER NOT NULL, image_thumbnail TEXT NOT NULL, image TEXT NOT NULL, PRIMARY KEY (id ASC) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 238
    if-eq p2, p3, :cond_0

    .line 240
    const-string v0, "DELETE FROM saved_wallpaper_images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
    :cond_0
    return-void
.end method
