.class public Lcom/android/launcher4/SavedWallpaperImages;
.super Landroid/widget/BaseAdapter;
.source "SavedWallpaperImages.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/SavedWallpaperImages$ImageDb;,
        Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDb:Lcom/android/launcher4/SavedWallpaperImages$ImageDb;

.field mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;",
            ">;"
        }
    .end annotation
.end field

.field mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "Launcher3.SavedWallpaperImages"

    sput-object v0, Lcom/android/launcher4/SavedWallpaperImages;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 91
    new-instance v0, Lcom/android/launcher4/SavedWallpaperImages$ImageDb;

    invoke-direct {v0, p1}, Lcom/android/launcher4/SavedWallpaperImages$ImageDb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher4/SavedWallpaperImages;->mDb:Lcom/android/launcher4/SavedWallpaperImages$ImageDb;

    .line 92
    iput-object p1, p0, Lcom/android/launcher4/SavedWallpaperImages;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/SavedWallpaperImages;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 94
    return-void
.end method

.method private getImageFilenames(I)Landroid/util/Pair;
    .locals 14
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 151
    iget-object v1, p0, Lcom/android/launcher4/SavedWallpaperImages;->mDb:Lcom/android/launcher4/SavedWallpaperImages$ImageDb;

    invoke-virtual {v1}, Lcom/android/launcher4/SavedWallpaperImages$ImageDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 152
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "saved_wallpaper_images"

    .line 153
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "image_thumbnail"

    aput-object v3, v2, v12

    .line 154
    const-string v3, "image"

    aput-object v3, v2, v13

    .line 155
    const-string v3, "id = ?"

    .line 156
    new-array v4, v13, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 152
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 161
    .local v10, "result":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 162
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 163
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 164
    .local v11, "thumbFilename":Ljava/lang/String;
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, "imageFilename":Ljava/lang/String;
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 166
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v11, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    .end local v9    # "imageFilename":Ljava/lang/String;
    .end local v11    # "thumbFilename":Ljava/lang/String;
    :cond_0
    return-object v5
.end method


# virtual methods
.method public deleteImage(I)V
    .locals 9
    .param p1, "id"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/launcher4/SavedWallpaperImages;->getImageFilenames(I)Landroid/util/Pair;

    move-result-object v1

    .line 174
    .local v1, "filenames":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/launcher4/SavedWallpaperImages;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    .local v2, "imageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 176
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/launcher4/SavedWallpaperImages;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .local v3, "thumbFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 178
    iget-object v4, p0, Lcom/android/launcher4/SavedWallpaperImages;->mDb:Lcom/android/launcher4/SavedWallpaperImages$ImageDb;

    invoke-virtual {v4}, Lcom/android/launcher4/SavedWallpaperImages$ImageDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 179
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "saved_wallpaper_images"

    .line 180
    const-string v5, "id = ?"

    .line 181
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 179
    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher4/SavedWallpaperImages;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImageFilename(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/launcher4/SavedWallpaperImages;->getImageFilenames(I)Landroid/util/Pair;

    move-result-object v0

    .line 144
    .local v0, "filenames":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 145
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 147
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/launcher4/SavedWallpaperImages;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher4/SavedWallpaperImages;->getItem(I)Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 130
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/launcher4/SavedWallpaperImages;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;

    invoke-static {v1}, Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;->access$0(Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    .local v0, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 136
    sget-object v1, Lcom/android/launcher4/SavedWallpaperImages;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error decoding thumbnail for wallpaper #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/SavedWallpaperImages;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 138
    invoke-static {v1, p1, p2, p3, v0}, Lcom/android/launcher4/WallpaperPickerActivity;->createImageTileView(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public loadThumbnailsAndImageIdList()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v3, 0x0

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/SavedWallpaperImages;->mImages:Ljava/util/ArrayList;

    .line 98
    iget-object v1, p0, Lcom/android/launcher4/SavedWallpaperImages;->mDb:Lcom/android/launcher4/SavedWallpaperImages$ImageDb;

    invoke-virtual {v1}, Lcom/android/launcher4/SavedWallpaperImages$ImageDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 99
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "saved_wallpaper_images"

    .line 100
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "id"

    aput-object v4, v2, v13

    .line 101
    const-string v4, "image_thumbnail"

    aput-object v4, v2, v14

    .line 106
    const-string v7, "id DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v8, v3

    .line 99
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 109
    .local v11, "result":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 119
    return-void

    .line 110
    :cond_1
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, "filename":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    iget-object v1, p0, Lcom/android/launcher4/SavedWallpaperImages;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v9, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 114
    .local v12, "thumb":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/launcher4/SavedWallpaperImages;->mImages:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v2, v3, v4}, Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;-><init>(ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public writeImage(Landroid/graphics/Bitmap;[B)V
    .locals 10
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "imageBytes"    # [B

    .prologue
    .line 188
    :try_start_0
    const-string v7, "wallpaper"

    const-string v8, ""

    iget-object v9, p0, Lcom/android/launcher4/SavedWallpaperImages;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 190
    .local v2, "imageFile":Ljava/io/File;
    iget-object v7, p0, Lcom/android/launcher4/SavedWallpaperImages;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 191
    .local v3, "imageFileStream":Ljava/io/FileOutputStream;
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 192
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 194
    const-string v7, "wallpaperthumb"

    const-string v8, ""

    iget-object v9, p0, Lcom/android/launcher4/SavedWallpaperImages;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 196
    .local v4, "thumbFile":Ljava/io/File;
    iget-object v7, p0, Lcom/android/launcher4/SavedWallpaperImages;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 197
    .local v5, "thumbFileStream":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5f

    invoke-virtual {p1, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 198
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 200
    iget-object v7, p0, Lcom/android/launcher4/SavedWallpaperImages;->mDb:Lcom/android/launcher4/SavedWallpaperImages$ImageDb;

    invoke-virtual {v7}, Lcom/android/launcher4/SavedWallpaperImages$ImageDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 201
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "image_thumbnail"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v7, "image"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v7, "saved_wallpaper_images"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "imageFile":Ljava/io/File;
    .end local v3    # "imageFileStream":Ljava/io/FileOutputStream;
    .end local v4    # "thumbFile":Ljava/io/File;
    .end local v5    # "thumbFileStream":Ljava/io/FileOutputStream;
    .end local v6    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/launcher4/SavedWallpaperImages;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed writing images to storage "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
