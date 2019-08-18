.class public Lcom/android/photos/BitmapRegionTileSource;
.super Ljava/lang/Object;
.source "BitmapRegionTileSource.java"

# interfaces
.implements Lcom/android/photos/views/TiledImageRenderer$TileSource;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation


# static fields
.field private static final GL_SIZE_LIMIT:I = 0x800

.field private static final MAX_PREVIEW_SIZE:I = 0x400

.field private static final REUSE_BITMAP:Z

.field private static final TAG:Ljava/lang/String; = "BitmapRegionTileSource"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field mDecoder:Landroid/graphics/BitmapRegionDecoder;

.field mHeight:I

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mOverlapRegion:Landroid/graphics/Rect;

.field private mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

.field private final mRotation:I

.field mTileSize:I

.field private mWantRegion:Landroid/graphics/Rect;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 51
    :goto_0
    sput-boolean v0, Lcom/android/photos/BitmapRegionTileSource;->REUSE_BITMAP:Z

    .line 56
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "previewSize"    # I
    .param p4, "rotation"    # I

    .prologue
    const/4 v1, 0x0

    .line 76
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/photos/BitmapRegionTileSource;-><init>(Landroid/content/res/Resources;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;III)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "previewSize"    # I
    .param p4, "rotation"    # I

    .prologue
    const/4 v1, 0x0

    .line 72
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/photos/BitmapRegionTileSource;-><init>(Landroid/content/res/Resources;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;III)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/Context;III)V
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resId"    # I
    .param p4, "previewSize"    # I
    .param p5, "rotation"    # I

    .prologue
    const/4 v3, 0x0

    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/photos/BitmapRegionTileSource;-><init>(Landroid/content/res/Resources;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;III)V

    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;III)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "resId"    # I
    .param p6, "previewSize"    # I
    .param p7, "rotation"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    .line 67
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    .line 86
    invoke-static {p2}, Lcom/android/photos/views/TiledImageRenderer;->suggestedTileSize(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mTileSize:I

    .line 87
    move/from16 v0, p7

    iput v0, p0, Lcom/android/photos/BitmapRegionTileSource;->mRotation:I

    .line 89
    if-eqz p3, :cond_1

    .line 90
    const/4 v5, 0x1

    :try_start_0
    invoke-static {p3, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 100
    :goto_0
    iget-object v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v5}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mWidth:I

    .line 101
    iget-object v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v5}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mHeight:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 106
    iget-object v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 107
    iget-object v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 108
    iget-object v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/16 v6, 0x4000

    new-array v6, v6, [B

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 109
    if-eqz p6, :cond_0

    .line 110
    const/16 v5, 0x400

    move/from16 v0, p6

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 114
    invoke-direct/range {p0 .. p6}, Lcom/android/photos/BitmapRegionTileSource;->decodePreview(Landroid/content/res/Resources;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 115
    .local v4, "preview":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/16 v6, 0x800

    if-gt v5, v6, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/16 v6, 0x800

    if-gt v5, v6, :cond_3

    .line 116
    new-instance v5, Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v5, v4}, Lcom/android/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    .line 125
    .end local v4    # "preview":Landroid/graphics/Bitmap;
    :cond_0
    :goto_2
    return-void

    .line 91
    :cond_1
    if-eqz p4, :cond_2

    .line 92
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 93
    .local v3, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v5, 0x1

    invoke-static {v1, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 102
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "BitmapRegionTileSource"

    const-string v6, "ctor failed"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 96
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 97
    .restart local v3    # "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 98
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    const/4 v5, 0x1

    invoke-static {v1, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 118
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "preview":Landroid/graphics/Bitmap;
    :cond_3
    const-string v5, "BitmapRegionTileSource"

    .line 119
    const-string v6, "Failed to create preview of apropriate size!  in: %dx%d, out: %dx%d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 121
    iget v9, p0, Lcom/android/photos/BitmapRegionTileSource;->mWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcom/android/photos/BitmapRegionTileSource;->mHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 122
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 118
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private decodePreview(Landroid/content/res/Resources;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "resId"    # I
    .param p6, "targetSize"    # I

    .prologue
    .line 220
    move/from16 v0, p6

    int-to-float v7, v0

    iget v8, p0, Lcom/android/photos/BitmapRegionTileSource;->mWidth:I

    iget v9, p0, Lcom/android/photos/BitmapRegionTileSource;->mHeight:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 221
    .local v6, "scale":F
    iget-object v7, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v6}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v8

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 222
    iget-object v7, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 224
    const/4 v5, 0x0

    .line 225
    .local v5, "result":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    .line 226
    iget-object v7, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p3, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 238
    :goto_0
    if-nez v5, :cond_2

    .line 239
    const/4 v7, 0x0

    .line 249
    :goto_1
    return-object v7

    .line 227
    :cond_0
    if-eqz p4, :cond_1

    .line 229
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 230
    .local v4, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 231
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v7, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 232
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 233
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "BitmapRegionTileSource"

    const-string v8, "getting preview failed"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 236
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v7, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    move/from16 v0, p5

    invoke-static {p1, v0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 244
    :cond_2
    move/from16 v0, p6

    int-to-float v7, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 246
    float-to-double v8, v6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_3

    .line 247
    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 249
    :cond_3
    invoke-static {v5}, Lcom/android/photos/BitmapRegionTileSource;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_1
.end method

.method private static ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 253
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p0

    .line 258
    :goto_0
    return-object v0

    .line 256
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 257
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "level"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "tileSize"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 186
    shl-int v2, p4, p1

    .line 187
    .local v2, "t":I
    iget-object v3, p0, Lcom/android/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    add-int v4, p2, v2

    add-int v5, p3, v2

    invoke-virtual {v3, p2, p3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 189
    iget-object v3, p0, Lcom/android/photos/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/photos/BitmapRegionTileSource;->mWidth:I

    iget v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 191
    iget-object v3, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 192
    iget-object v3, p0, Lcom/android/photos/BitmapRegionTileSource;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    iget-object v4, p0, Lcom/android/photos/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 195
    const-string v3, "BitmapRegionTileSource"

    const-string v4, "fail in decoding region"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/android/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/photos/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 202
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 203
    .local v1, "result":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/photos/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    if-nez v3, :cond_2

    .line 204
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/android/photos/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    .line 206
    :cond_2
    iget-object v3, p0, Lcom/android/photos/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    iget-object v3, p0, Lcom/android/photos/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    .line 208
    iget-object v4, p0, Lcom/android/photos/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    shr-int/2addr v4, p1

    int-to-float v4, v4

    .line 209
    iget-object v5, p0, Lcom/android/photos/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    shr-int/2addr v5, p1

    int-to-float v5, v5

    .line 207
    invoke-virtual {v3, v0, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 210
    iget-object v3, p0, Lcom/android/photos/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 211
    goto :goto_0
.end method


# virtual methods
.method public getImageHeight()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/photos/BitmapRegionTileSource;->mHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/photos/BitmapRegionTileSource;->mWidth:I

    return v0
.end method

.method public getPreview()Lcom/android/gallery3d/glrenderer/BasicTexture;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/photos/BitmapRegionTileSource;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/android/photos/BitmapRegionTileSource;->mRotation:I

    return v0
.end method

.method public getTile(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "level"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/android/photos/BitmapRegionTileSource;->getTileSize()I

    move-result v1

    .line 155
    .local v1, "tileSize":I
    sget-boolean v2, Lcom/android/photos/BitmapRegionTileSource;->REUSE_BITMAP:Z

    if-nez v2, :cond_0

    .line 156
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/photos/BitmapRegionTileSource;->getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 180
    :goto_0
    return-object v2

    .line 159
    :cond_0
    shl-int v0, v1, p1

    .line 160
    .local v0, "t":I
    iget-object v2, p0, Lcom/android/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    add-int v3, p2, v0

    add-int v4, p3, v0

    invoke-virtual {v2, p2, p3, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 162
    if-nez p4, :cond_1

    .line 163
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 167
    iget-object v2, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p4, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 170
    :try_start_0
    iget-object v2, p0, Lcom/android/photos/BitmapRegionTileSource;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    iget-object v3, p0, Lcom/android/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 172
    iget-object v2, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v2, p4, :cond_2

    iget-object v2, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 173
    iget-object v2, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 177
    :cond_2
    if-nez p4, :cond_3

    .line 178
    const-string v2, "BitmapRegionTileSource"

    const-string v3, "fail in decoding region"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v2, p4

    .line 180
    goto :goto_0

    .line 171
    :catchall_0
    move-exception v2

    .line 172
    iget-object v3, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v3, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v3, p4, :cond_4

    iget-object v3, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v3, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 173
    iget-object v3, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 175
    :cond_4
    throw v2
.end method

.method public getTileSize()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/photos/BitmapRegionTileSource;->mTileSize:I

    return v0
.end method
