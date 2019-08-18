.class public Lcom/android/launcher4/WallpaperCropActivity;
.super Landroid/app/Activity;
.source "WallpaperCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;,
        Lcom/android/launcher4/WallpaperCropActivity$OnBitmapCroppedHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field private static final LOGTAG:Ljava/lang/String; = "Launcher3.CropActivity"

.field public static final MAX_BMAP_IN_INTENT:I = 0xb71b0

.field protected static final WALLPAPER_HEIGHT_KEY:Ljava/lang/String; = "wallpaper.height"

.field private static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field protected static final WALLPAPER_WIDTH_KEY:Ljava/lang/String; = "wallpaper.width"


# instance fields
.field protected mCropView:Lcom/android/launcher4/CropView;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method protected static convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 788
    const-string v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    .line 789
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method protected static getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    .line 162
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 163
    .local v6, "minDims":Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 167
    .local v4, "maxDims":Landroid/graphics/Point;
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 168
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2, v6, v4}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 169
    iget v8, v4, Landroid/graphics/Point;->x:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 170
    .local v3, "maxDim":I
    iget v8, v6, Landroid/graphics/Point;->x:I

    iget v9, v6, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 172
    .local v5, "minDim":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_0

    .line 173
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 174
    .local v7, "realSize":Landroid/graphics/Point;
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 175
    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v9, v7, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 176
    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v9, v7, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 183
    .end local v7    # "realSize":Landroid/graphics/Point;
    :cond_0
    invoke-static {p0}, Lcom/android/launcher4/WallpaperCropActivity;->isScreenLarge(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 184
    int-to-float v8, v3

    invoke-static {v3, v5}, Lcom/android/launcher4/WallpaperCropActivity;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 186
    .local v1, "defaultWidth":I
    move v0, v3

    .line 195
    .local v0, "defaultHeight":I
    :goto_0
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v8

    .line 188
    .end local v0    # "defaultHeight":I
    .end local v1    # "defaultWidth":I
    :cond_1
    int-to-float v8, v5

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 190
    .restart local v1    # "defaultWidth":I
    move v0, v5

    .restart local v0    # "defaultHeight":I
    goto :goto_0
.end method

.method protected static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "requestFormat"    # Ljava/lang/String;

    .prologue
    .line 793
    if-nez p0, :cond_1

    const-string v0, "jpg"

    .line 794
    .local v0, "outputFormat":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 795
    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "png"

    :goto_1
    return-object v1

    .end local v0    # "outputFormat":Ljava/lang/String;
    :cond_1
    move-object v0, p0

    .line 793
    goto :goto_0

    .line 800
    .restart local v0    # "outputFormat":Ljava/lang/String;
    :cond_2
    const-string v1, "jpg"

    goto :goto_1
.end method

.method protected static getMaxCropRect(IIIIZ)Landroid/graphics/RectF;
    .locals 6
    .param p0, "inWidth"    # I
    .param p1, "inHeight"    # I
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "leftAligned"    # Z

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 765
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 767
    .local v0, "cropRect":Landroid/graphics/RectF;
    int-to-float v1, p0

    int-to-float v2, p1

    div-float/2addr v1, v2

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 768
    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 769
    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 770
    int-to-float v1, p0

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    .line 771
    int-to-float v3, p1

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    .line 770
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 772
    int-to-float v1, p0

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 773
    if-eqz p4, :cond_0

    .line 774
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 775
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 783
    :cond_0
    :goto_0
    return-object v0

    .line 778
    :cond_1
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 779
    int-to-float v1, p0

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 780
    int-to-float v1, p1

    int-to-float v2, p3

    int-to-float v3, p2

    div-float/2addr v2, v3

    int-to-float v3, p0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 781
    int-to-float v1, p1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public static getRotationFromExif(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 203
    const/4 v0, 0x0

    invoke-static {v1, v1, v0, p0, p1}, Lcom/android/launcher4/WallpaperCropActivity;->getRotationFromExifHelper(Ljava/lang/String;Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static getRotationFromExif(Landroid/content/res/Resources;I)I
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-static {v0, p0, p1, v0, v0}, Lcom/android/launcher4/WallpaperCropActivity;->getRotationFromExifHelper(Ljava/lang/String;Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static getRotationFromExif(Ljava/lang/String;)I
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 199
    const/4 v0, 0x0

    invoke-static {p0, v1, v0, v1, v1}, Lcom/android/launcher4/WallpaperCropActivity;->getRotationFromExifHelper(Ljava/lang/String;Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method private static getRotationFromExifHelper(Ljava/lang/String;Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 212
    new-instance v2, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v2}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 214
    .local v2, "ei":Lcom/android/gallery3d/exif/ExifInterface;
    if-eqz p0, :cond_0

    .line 215
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 226
    :goto_0
    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v4

    .line 227
    .local v4, "ori":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    .line 229
    invoke-virtual {v4}, Ljava/lang/Integer;->shortValue()S

    move-result v5

    .line 228
    invoke-static {v5}, Lcom/android/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result v5

    .line 234
    .end local v4    # "ori":Ljava/lang/Integer;
    :goto_1
    return v5

    .line 216
    :cond_0
    if-eqz p4, :cond_2

    .line 217
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 219
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 220
    .local v0, "bis":Ljava/io/BufferedInputStream;
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Launcher3.CropActivity"

    const-string v6, "Getting exif data failed"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 222
    :cond_2
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 223
    .restart local v3    # "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 224
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getSharedPreferencesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-class v0, Lcom/android/launcher4/WallpaperCropActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isScreenLarge(Landroid/content/res/Resources;)Z
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 285
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x2d0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static suggestWallpaperDimension(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;)V
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p2, "windowManager"    # Landroid/view/WindowManager;
    .param p3, "wallpaperManager"    # Landroid/app/WallpaperManager;

    .prologue
    .line 747
    invoke-static {p0, p2}, Lcom/android/launcher4/WallpaperCropActivity;->getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v0

    .line 750
    .local v0, "defaultWallpaperSize":Landroid/graphics/Point;
    new-instance v1, Lcom/android/launcher4/WallpaperCropActivity$5;

    const-string v2, "suggestWallpaperDimension"

    invoke-direct {v1, v2, p1, v0, p3}, Lcom/android/launcher4/WallpaperCropActivity$5;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/graphics/Point;Landroid/app/WallpaperManager;)V

    .line 760
    invoke-virtual {v1}, Lcom/android/launcher4/WallpaperCropActivity$5;->start()V

    .line 761
    return-void
.end method

.method private static wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 131
    int-to-float v7, p0

    int-to-float v8, p1

    div-float v4, v7, v8

    .line 141
    .local v4, "aspectRatio":F
    const v0, 0x3fcccccd    # 1.6f

    .line 142
    .local v0, "ASPECT_RATIO_LANDSCAPE":F
    const/high16 v1, 0x3f200000    # 0.625f

    .line 143
    .local v1, "ASPECT_RATIO_PORTRAIT":F
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 144
    .local v2, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE":F
    const v3, 0x3f99999a    # 1.2f

    .line 153
    .local v3, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT":F
    const v5, 0x3e9d89d7

    .line 155
    .local v5, "x":F
    const v6, 0x3f80fc10

    .line 157
    .local v6, "y":F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method


# virtual methods
.method protected cropImageAndSetWallpaper(Landroid/content/res/Resources;IZ)V
    .locals 14
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "finishActivityWhenDone"    # Z

    .prologue
    .line 261
    invoke-static/range {p1 .. p2}, Lcom/android/launcher4/WallpaperCropActivity;->getRotationFromExif(Landroid/content/res/Resources;I)I

    move-result v6

    .line 262
    .local v6, "rotation":I
    iget-object v2, p0, Lcom/android/launcher4/WallpaperCropActivity;->mCropView:Lcom/android/launcher4/CropView;

    invoke-virtual {v2}, Lcom/android/launcher4/CropView;->getSourceDimensions()Landroid/graphics/Point;

    move-result-object v12

    .line 263
    .local v12, "inSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 264
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 263
    invoke-static {v2, v3}, Lcom/android/launcher4/WallpaperCropActivity;->getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v13

    .line 265
    .local v13, "outSize":Landroid/graphics/Point;
    iget v2, v12, Landroid/graphics/Point;->x:I

    iget v3, v12, Landroid/graphics/Point;->y:I

    iget v4, v13, Landroid/graphics/Point;->x:I

    iget v7, v13, Landroid/graphics/Point;->y:I

    .line 266
    const/4 v8, 0x0

    .line 265
    invoke-static {v2, v3, v4, v7, v8}, Lcom/android/launcher4/WallpaperCropActivity;->getMaxCropRect(IIIIZ)Landroid/graphics/RectF;

    move-result-object v5

    .line 267
    .local v5, "crop":Landroid/graphics/RectF;
    new-instance v11, Lcom/android/launcher4/WallpaperCropActivity$3;

    move/from16 v0, p3

    invoke-direct {v11, p0, v0}, Lcom/android/launcher4/WallpaperCropActivity$3;-><init>(Lcom/android/launcher4/WallpaperCropActivity;Z)V

    .line 278
    .local v11, "onEndCrop":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;

    .line 279
    iget v7, v13, Landroid/graphics/Point;->x:I

    iget v8, v13, Landroid/graphics/Point;->y:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    .line 278
    invoke-direct/range {v1 .. v11}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;-><init>(Landroid/content/Context;Landroid/content/res/Resources;ILandroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    .line 280
    .local v1, "cropTask":Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 281
    return-void
.end method

.method protected cropImageAndSetWallpaper(Landroid/net/Uri;Lcom/android/launcher4/WallpaperCropActivity$OnBitmapCroppedHandler;Z)V
    .locals 31
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "onBitmapCroppedHandler"    # Lcom/android/launcher4/WallpaperCropActivity$OnBitmapCroppedHandler;
    .param p3, "finishActivityWhenDone"    # Z

    .prologue
    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/WallpaperCropActivity;->mCropView:Lcom/android/launcher4/CropView;

    invoke-virtual {v3}, Lcom/android/launcher4/CropView;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_2

    const/16 v21, 0x1

    .line 294
    .local v21, "ltr":Z
    :goto_0
    new-instance v26, Landroid/graphics/Point;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Point;-><init>()V

    .line 295
    .local v26, "minDims":Landroid/graphics/Point;
    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    .line 296
    .local v23, "maxDims":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/WallpaperCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    .line 297
    .local v13, "d":Landroid/view/Display;
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 299
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 300
    .local v15, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v13, v15}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 302
    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 303
    .local v22, "maxDim":I
    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 305
    .local v25, "minDim":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher4/WallpaperCropActivity;->isScreenLarge(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 306
    move/from16 v0, v22

    int-to-float v3, v0

    move/from16 v0, v22

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/launcher4/WallpaperCropActivity;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v14, v3

    .line 313
    .local v14, "defaultWallpaperWidth":I
    :goto_1
    iget v3, v15, Landroid/graphics/Point;->x:I

    iget v4, v15, Landroid/graphics/Point;->y:I

    if-ge v3, v4, :cond_4

    const/16 v20, 0x1

    .line 315
    .local v20, "isPortrait":Z
    :goto_2
    if-eqz v20, :cond_5

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/WallpaperCropActivity;->mCropView:Lcom/android/launcher4/CropView;

    invoke-virtual {v3}, Lcom/android/launcher4/CropView;->getHeight()I

    move-result v27

    .line 322
    .local v27, "portraitHeight":I
    :goto_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 323
    new-instance v28, Landroid/graphics/Point;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Point;-><init>()V

    .line 324
    .local v28, "realSize":Landroid/graphics/Point;
    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 325
    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v28

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 328
    .end local v28    # "realSize":Landroid/graphics/Point;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/WallpaperCropActivity;->mCropView:Lcom/android/launcher4/CropView;

    invoke-virtual {v3}, Lcom/android/launcher4/CropView;->getCrop()Landroid/graphics/RectF;

    move-result-object v5

    .line 329
    .local v5, "cropRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/WallpaperCropActivity;->mCropView:Lcom/android/launcher4/CropView;

    invoke-virtual {v3}, Lcom/android/launcher4/CropView;->getImageRotation()I

    move-result v6

    .line 330
    .local v6, "cropRotation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/WallpaperCropActivity;->mCropView:Lcom/android/launcher4/CropView;

    invoke-virtual {v3}, Lcom/android/launcher4/CropView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v12, v3, v4

    .line 332
    .local v12, "cropScale":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/WallpaperCropActivity;->mCropView:Lcom/android/launcher4/CropView;

    invoke-virtual {v3}, Lcom/android/launcher4/CropView;->getSourceDimensions()Landroid/graphics/Point;

    move-result-object v19

    .line 333
    .local v19, "inSize":Landroid/graphics/Point;
    new-instance v29, Landroid/graphics/Matrix;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Matrix;-><init>()V

    .line 334
    .local v29, "rotateMatrix":Landroid/graphics/Matrix;
    int-to-float v3, v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 335
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v30, v0

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aput v4, v30, v3

    const/4 v3, 0x1

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    aput v4, v30, v3

    .line 336
    .local v30, "rotatedInSize":[F
    invoke-virtual/range {v29 .. v30}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 337
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v30, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aput v4, v30, v3

    .line 338
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget v4, v30, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aput v4, v30, v3

    .line 343
    if-eqz v21, :cond_6

    const/4 v3, 0x0

    aget v3, v30, v3

    iget v4, v5, Landroid/graphics/RectF;->right:F

    sub-float v18, v3, v4

    .line 346
    .local v18, "extraSpace":F
    :goto_4
    int-to-float v3, v14

    div-float/2addr v3, v12

    .line 347
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 346
    sub-float v24, v3, v4

    .line 348
    .local v24, "maxExtraSpace":F
    move/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 350
    if-eqz v21, :cond_7

    .line 351
    iget v3, v5, Landroid/graphics/RectF;->right:F

    add-float v3, v3, v18

    iput v3, v5, Landroid/graphics/RectF;->right:F

    .line 357
    :goto_5
    if-eqz v20, :cond_8

    .line 358
    iget v3, v5, Landroid/graphics/RectF;->top:F

    move/from16 v0, v27

    int-to-float v4, v0

    div-float/2addr v4, v12

    add-float/2addr v3, v4

    iput v3, v5, Landroid/graphics/RectF;->bottom:F

    .line 368
    :goto_6
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 369
    .local v7, "outWidth":I
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 371
    .local v8, "outHeight":I
    new-instance v11, Lcom/android/launcher4/WallpaperCropActivity$4;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v11, v0, v7, v8, v1}, Lcom/android/launcher4/WallpaperCropActivity$4;-><init>(Lcom/android/launcher4/WallpaperCropActivity;IIZ)V

    .line 380
    .local v11, "onEndCrop":Ljava/lang/Runnable;
    new-instance v2, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;

    .line 381
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 380
    invoke-direct/range {v2 .. v11}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    .line 382
    .local v2, "cropTask":Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;
    if-eqz p2, :cond_1

    .line 383
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->setOnBitmapCropped(Lcom/android/launcher4/WallpaperCropActivity$OnBitmapCroppedHandler;)V

    .line 385
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 386
    return-void

    .line 292
    .end local v2    # "cropTask":Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;
    .end local v5    # "cropRect":Landroid/graphics/RectF;
    .end local v6    # "cropRotation":I
    .end local v7    # "outWidth":I
    .end local v8    # "outHeight":I
    .end local v11    # "onEndCrop":Ljava/lang/Runnable;
    .end local v12    # "cropScale":F
    .end local v13    # "d":Landroid/view/Display;
    .end local v14    # "defaultWallpaperWidth":I
    .end local v15    # "displaySize":Landroid/graphics/Point;
    .end local v18    # "extraSpace":F
    .end local v19    # "inSize":Landroid/graphics/Point;
    .end local v20    # "isPortrait":Z
    .end local v21    # "ltr":Z
    .end local v22    # "maxDim":I
    .end local v23    # "maxDims":Landroid/graphics/Point;
    .end local v24    # "maxExtraSpace":F
    .end local v25    # "minDim":I
    .end local v26    # "minDims":Landroid/graphics/Point;
    .end local v27    # "portraitHeight":I
    .end local v29    # "rotateMatrix":Landroid/graphics/Matrix;
    .end local v30    # "rotatedInSize":[F
    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 310
    .restart local v13    # "d":Landroid/view/Display;
    .restart local v15    # "displaySize":Landroid/graphics/Point;
    .restart local v21    # "ltr":Z
    .restart local v22    # "maxDim":I
    .restart local v23    # "maxDims":Landroid/graphics/Point;
    .restart local v25    # "minDim":I
    .restart local v26    # "minDims":Landroid/graphics/Point;
    :cond_3
    move/from16 v0, v25

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 309
    move/from16 v0, v22

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .restart local v14    # "defaultWallpaperWidth":I
    goto/16 :goto_1

    .line 313
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 320
    .restart local v20    # "isPortrait":Z
    :cond_5
    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v27

    .restart local v27    # "portraitHeight":I
    goto/16 :goto_3

    .line 344
    .restart local v5    # "cropRect":Landroid/graphics/RectF;
    .restart local v6    # "cropRotation":I
    .restart local v12    # "cropScale":F
    .restart local v19    # "inSize":Landroid/graphics/Point;
    .restart local v29    # "rotateMatrix":Landroid/graphics/Matrix;
    .restart local v30    # "rotatedInSize":[F
    :cond_6
    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    goto :goto_4

    .line 353
    .restart local v18    # "extraSpace":F
    .restart local v24    # "maxExtraSpace":F
    :cond_7
    iget v3, v5, Landroid/graphics/RectF;->left:F

    sub-float v3, v3, v18

    iput v3, v5, Landroid/graphics/RectF;->left:F

    goto :goto_5

    .line 360
    :cond_8
    move/from16 v0, v27

    int-to-float v3, v0

    div-float/2addr v3, v12

    .line 361
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 360
    sub-float v17, v3, v4

    .line 363
    .local v17, "extraPortraitHeight":F
    const/4 v3, 0x1

    aget v3, v30, v3

    iget v4, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    iget v4, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 364
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v17, v4

    .line 362
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 365
    .local v16, "expandHeight":F
    iget v3, v5, Landroid/graphics/RectF;->top:F

    sub-float v3, v3, v16

    iput v3, v5, Landroid/graphics/RectF;->top:F

    .line 366
    iget v3, v5, Landroid/graphics/RectF;->bottom:F

    add-float v3, v3, v16

    iput v3, v5, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_6
.end method

.method public enableRotation()Z
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 7

    .prologue
    .line 86
    const v4, 0x7f040030

    invoke-virtual {p0, v4}, Lcom/android/launcher4/WallpaperCropActivity;->setContentView(I)V

    .line 88
    const v4, 0x7f11008f

    invoke-virtual {p0, v4}, Lcom/android/launcher4/WallpaperCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/CropView;

    iput-object v4, p0, Lcom/android/launcher4/WallpaperCropActivity;->mCropView:Lcom/android/launcher4/CropView;

    .line 90
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 91
    .local v1, "cropIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 93
    .local v2, "imageUri":Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 94
    const-string v4, "Launcher3.CropActivity"

    .line 95
    const-string v5, "No URI passed in intent, exiting WallpaperCropActivity"

    .line 94
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperCropActivity;->finish()V

    .line 117
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-static {p0, v2}, Lcom/android/launcher4/WallpaperCropActivity;->getRotationFromExif(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v3

    .line 101
    .local v3, "rotation":I
    iget-object v4, p0, Lcom/android/launcher4/WallpaperCropActivity;->mCropView:Lcom/android/launcher4/CropView;

    new-instance v5, Lcom/android/photos/BitmapRegionTileSource;

    .line 102
    const/16 v6, 0x400

    invoke-direct {v5, p0, v2, v6, v3}, Lcom/android/photos/BitmapRegionTileSource;-><init>(Landroid/content/Context;Landroid/net/Uri;II)V

    const/4 v6, 0x0

    .line 101
    invoke-virtual {v4, v5, v6}, Lcom/android/launcher4/CropView;->setTileSource(Lcom/android/photos/views/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V

    .line 103
    iget-object v4, p0, Lcom/android/launcher4/WallpaperCropActivity;->mCropView:Lcom/android/launcher4/CropView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher4/CropView;->setTouchEnabled(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperCropActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 107
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/high16 v4, 0x7f040000

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 108
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    .line 109
    new-instance v5, Lcom/android/launcher4/WallpaperCropActivity$1;

    invoke-direct {v5, p0, v2}, Lcom/android/launcher4/WallpaperCropActivity$1;-><init>(Lcom/android/launcher4/WallpaperCropActivity;Landroid/net/Uri;)V

    .line 108
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperCropActivity;->init()V

    .line 80
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperCropActivity;->enableRotation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher4/WallpaperCropActivity;->setRequestedOrientation(I)V

    .line 83
    :cond_0
    return-void
.end method

.method protected setWallpaper(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "finishActivityWhenDone"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 239
    invoke-static {p1}, Lcom/android/launcher4/WallpaperCropActivity;->getRotationFromExif(Ljava/lang/String;)I

    move-result v4

    .line 240
    .local v4, "rotation":I
    new-instance v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;

    move-object v1, p0

    move-object v2, p1

    move v6, v5

    move v8, v5

    move-object v9, v3

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    .line 242
    .local v0, "cropTask":Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;
    invoke-virtual {v0}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->getImageBounds()Landroid/graphics/Point;

    move-result-object v10

    .line 243
    .local v10, "bounds":Landroid/graphics/Point;
    new-instance v11, Lcom/android/launcher4/WallpaperCropActivity$2;

    invoke-direct {v11, p0, v10, p2}, Lcom/android/launcher4/WallpaperCropActivity$2;-><init>(Lcom/android/launcher4/WallpaperCropActivity;Landroid/graphics/Point;Z)V

    .line 252
    .local v11, "onEndCrop":Ljava/lang/Runnable;
    invoke-virtual {v0, v11}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->setOnEndRunnable(Ljava/lang/Runnable;)V

    .line 253
    invoke-virtual {v0, v7}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->setNoCrop(Z)V

    .line 254
    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 255
    return-void
.end method

.method protected updateWallpaperDimensions(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 728
    invoke-static {}, Lcom/android/launcher4/WallpaperCropActivity;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "spKey":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher4/WallpaperCropActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 730
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 731
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 732
    const-string v3, "wallpaper.width"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 733
    const-string v3, "wallpaper.height"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 738
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 740
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 741
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    .line 740
    invoke-static {v3, v1, v4, v5}, Lcom/android/launcher4/WallpaperCropActivity;->suggestWallpaperDimension(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;)V

    .line 742
    return-void

    .line 735
    :cond_0
    const-string v3, "wallpaper.width"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 736
    const-string v3, "wallpaper.height"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
