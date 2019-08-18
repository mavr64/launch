.class public Lcom/android/launcher4/WidgetPreviewLoader;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;
    }
.end annotation


# static fields
.field private static final SHORTCUT_PREFIX:Ljava/lang/String; = "Shortcut:"

.field static final TAG:Ljava/lang/String; = "WidgetPreviewLoader"

.field private static final WIDGET_PREFIX:Ljava/lang/String; = "Widget:"

.field private static sInvalidPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppIconSize:I

.field private mCachedAppWidgetPreviewCanvas:Lcom/android/launcher4/CanvasCache;

.field private mCachedAppWidgetPreviewDestRect:Lcom/android/launcher4/RectCache;

.field private mCachedAppWidgetPreviewPaint:Lcom/android/launcher4/PaintCache;

.field private mCachedAppWidgetPreviewSrcRect:Lcom/android/launcher4/RectCache;

.field private mCachedBitmapFactoryOptions:Lcom/android/launcher4/BitmapFactoryOptionsCache;

.field private mCachedSelectQuery:Ljava/lang/String;

.field private mCachedShortcutPreviewBitmap:Lcom/android/launcher4/BitmapCache;

.field private mCachedShortcutPreviewCanvas:Lcom/android/launcher4/CanvasCache;

.field private mCachedShortcutPreviewPaint:Lcom/android/launcher4/PaintCache;

.field private mContext:Landroid/content/Context;

.field private mDb:Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

.field private mIconCache:Lcom/android/launcher4/IconCache;

.field private mLoadedPreviews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreviewBitmapHeight:I

.field private mPreviewBitmapWidth:I

.field private mSize:Ljava/lang/String;

.field private mUnusedBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWidgetSpacingLayout:Lcom/android/launcher4/PagedViewCellLayout;

.field private final sWidgetPreviewIconPaddingPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/launcher4/WidgetPreviewLoader;->sInvalidPackages:Ljava/util/HashSet;

    .line 292
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v2, Lcom/android/launcher4/BitmapCache;

    invoke-direct {v2}, Lcom/android/launcher4/BitmapCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedShortcutPreviewBitmap:Lcom/android/launcher4/BitmapCache;

    .line 113
    new-instance v2, Lcom/android/launcher4/PaintCache;

    invoke-direct {v2}, Lcom/android/launcher4/PaintCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedShortcutPreviewPaint:Lcom/android/launcher4/PaintCache;

    .line 114
    new-instance v2, Lcom/android/launcher4/CanvasCache;

    invoke-direct {v2}, Lcom/android/launcher4/CanvasCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedShortcutPreviewCanvas:Lcom/android/launcher4/CanvasCache;

    .line 117
    new-instance v2, Lcom/android/launcher4/CanvasCache;

    invoke-direct {v2}, Lcom/android/launcher4/CanvasCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedAppWidgetPreviewCanvas:Lcom/android/launcher4/CanvasCache;

    .line 118
    new-instance v2, Lcom/android/launcher4/RectCache;

    invoke-direct {v2}, Lcom/android/launcher4/RectCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedAppWidgetPreviewSrcRect:Lcom/android/launcher4/RectCache;

    .line 119
    new-instance v2, Lcom/android/launcher4/RectCache;

    invoke-direct {v2}, Lcom/android/launcher4/RectCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedAppWidgetPreviewDestRect:Lcom/android/launcher4/RectCache;

    .line 120
    new-instance v2, Lcom/android/launcher4/PaintCache;

    invoke-direct {v2}, Lcom/android/launcher4/PaintCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedAppWidgetPreviewPaint:Lcom/android/launcher4/PaintCache;

    .line 122
    new-instance v2, Lcom/android/launcher4/BitmapFactoryOptionsCache;

    invoke-direct {v2}, Lcom/android/launcher4/BitmapFactoryOptionsCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedBitmapFactoryOptions:Lcom/android/launcher4/BitmapFactoryOptionsCache;

    .line 127
    const/high16 v2, 0x3e800000    # 0.25f

    iput v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->sWidgetPreviewIconPaddingPercentage:F

    .line 140
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 141
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 143
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    iput-object p1, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 144
    iget-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 145
    iget v2, v1, Lcom/android/launcher4/DeviceProfile;->iconSizePx:I

    iput v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mAppIconSize:I

    .line 146
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getIconCache()Lcom/android/launcher4/IconCache;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher4/IconCache;

    .line 147
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getWidgetPreviewCacheDb()Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mDb:Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

    .line 148
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mLoadedPreviews:Ljava/util/HashMap;

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/ArrayList;

    .line 150
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/WidgetPreviewLoader;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/WidgetPreviewLoader;->writeToDb(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/launcher4/WidgetPreviewLoader;->sInvalidPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method private generateShortcutPreview(Landroid/content/pm/ResolveInfo;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 553
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedShortcutPreviewBitmap:Lcom/android/launcher4/BitmapCache;

    invoke-virtual {v7}, Lcom/android/launcher4/BitmapCache;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 554
    .local v3, "tempBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedShortcutPreviewCanvas:Lcom/android/launcher4/CanvasCache;

    invoke-virtual {v7}, Lcom/android/launcher4/CanvasCache;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Canvas;

    .line 555
    .local v13, "c":Landroid/graphics/Canvas;
    if-eqz v3, :cond_0

    .line 556
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move/from16 v0, p2

    if-ne v7, v0, :cond_0

    .line 557
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move/from16 v0, p3

    if-eq v7, v0, :cond_2

    .line 558
    :cond_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 559
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedShortcutPreviewBitmap:Lcom/android/launcher4/BitmapCache;

    invoke-virtual {v7, v3}, Lcom/android/launcher4/BitmapCache;->set(Ljava/lang/Object;)V

    .line 566
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher4/IconCache;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/android/launcher4/IconCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 568
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 569
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 570
    .local v5, "paddingTop":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 571
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0024

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 572
    .local v4, "paddingLeft":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 573
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v16

    .line 575
    .local v16, "paddingRight":I
    sub-int v7, p2, v4

    sub-int v6, v7, v16

    .local v6, "scaledIconWidth":I
    move v7, v6

    .line 577
    invoke-static/range {v2 .. v7}, Lcom/android/launcher4/WidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 580
    if-eqz p4, :cond_3

    .line 581
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move/from16 v0, p2

    if-ne v7, v0, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move/from16 v0, p3

    if-eq v7, v0, :cond_3

    .line 582
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Improperly sized bitmap passed as argument"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 561
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "paddingLeft":I
    .end local v5    # "paddingTop":I
    .end local v6    # "scaledIconWidth":I
    .end local v16    # "paddingRight":I
    :cond_2
    invoke-virtual {v13, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 562
    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v7, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 563
    const/4 v7, 0x0

    invoke-virtual {v13, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 583
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "paddingLeft":I
    .restart local v5    # "paddingTop":I
    .restart local v6    # "scaledIconWidth":I
    .restart local v16    # "paddingRight":I
    :cond_3
    if-nez p4, :cond_4

    .line 584
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 587
    :cond_4
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedShortcutPreviewPaint:Lcom/android/launcher4/PaintCache;

    invoke-virtual {v7}, Lcom/android/launcher4/PaintCache;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Paint;

    .line 590
    .local v15, "p":Landroid/graphics/Paint;
    if-nez v15, :cond_5

    .line 591
    new-instance v15, Landroid/graphics/Paint;

    .end local v15    # "p":Landroid/graphics/Paint;
    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 592
    .restart local v15    # "p":Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/ColorMatrix;

    invoke-direct {v14}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 593
    .local v14, "colorMatrix":Landroid/graphics/ColorMatrix;
    const/4 v7, 0x0

    invoke-virtual {v14, v7}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 594
    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v7, v14}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 595
    const/16 v7, 0xf

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 596
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedShortcutPreviewPaint:Lcom/android/launcher4/PaintCache;

    invoke-virtual {v7, v15}, Lcom/android/launcher4/PaintCache;->set(Ljava/lang/Object;)V

    .line 598
    .end local v14    # "colorMatrix":Landroid/graphics/ColorMatrix;
    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v13, v3, v7, v8, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 599
    const/4 v7, 0x0

    invoke-virtual {v13, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 601
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mAppIconSize:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mAppIconSize:I

    move-object v7, v2

    move-object/from16 v8, p4

    invoke-static/range {v7 .. v12}, Lcom/android/launcher4/WidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 603
    return-object p4
.end method

.method private static getObjectName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v2, "sb":Ljava/lang/StringBuilder;
    instance-of v3, p0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v3, :cond_0

    .line 299
    const-string v3, "Widget:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    check-cast p0, Landroid/appwidget/AppWidgetProviderInfo;

    .end local p0    # "o":Ljava/lang/Object;
    iget-object v3, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "output":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 312
    :goto_0
    return-object v1

    .line 304
    .end local v1    # "output":Ljava/lang/String;
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    const-string v3, "Shortcut:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    .line 306
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 307
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 308
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .restart local v1    # "output":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method

.method private getObjectPackage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 316
    instance-of v1, p1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v1, :cond_0

    .line 317
    check-cast p1, Landroid/appwidget/AppWidgetProviderInfo;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 320
    :goto_0
    return-object v1

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    move-object v0, p1

    .line 319
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 320
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private readFromDb(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedSelectQuery:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 373
    const-string v1, "name = ? AND size = ?"

    iput-object v1, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedSelectQuery:Ljava/lang/String;

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mDb:Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v1}, Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 377
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "shortcut_and_widget_previews"

    .line 378
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "preview_bitmap"

    aput-object v4, v2, v3

    .line 379
    iget-object v3, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedSelectQuery:Ljava/lang/String;

    .line 380
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mSize:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 381
    const/4 v5, 0x0

    .line 382
    const/4 v6, 0x0

    .line 383
    const/4 v7, 0x0

    .line 384
    const/4 v8, 0x0

    .line 377
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 385
    .local v12, "result":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 386
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 387
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 388
    .local v9, "blob":[B
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 389
    iget-object v1, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedBitmapFactoryOptions:Lcom/android/launcher4/BitmapFactoryOptionsCache;

    invoke-virtual {v1}, Lcom/android/launcher4/BitmapFactoryOptionsCache;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/BitmapFactory$Options;

    .line 390
    .local v11, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-object p2, v11, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 391
    const/4 v1, 0x1

    iput v1, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 393
    const/4 v1, 0x0

    :try_start_0
    array-length v2, v9

    invoke-static {v9, v1, v2, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 400
    .end local v9    # "blob":[B
    .end local v11    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v1

    .line 394
    .restart local v9    # "blob":[B
    .restart local v11    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v10

    .line 395
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mDb:Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

    invoke-static {v1, p1}, Lcom/android/launcher4/WidgetPreviewLoader;->removeItemFromDb(Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;Ljava/lang/String;)V

    .line 396
    const/4 v1, 0x0

    goto :goto_0

    .line 399
    .end local v9    # "blob":[B
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 400
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static removeItemFromDb(Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;Ljava/lang/String;)V
    .locals 5
    .param p0, "cacheDb"    # Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;
    .param p1, "objectName"    # Ljava/lang/String;

    .prologue
    .line 360
    new-instance v0, Lcom/android/launcher4/WidgetPreviewLoader$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher4/WidgetPreviewLoader$3;-><init>(Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;Ljava/lang/String;)V

    .line 368
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/WidgetPreviewLoader$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 369
    return-void
.end method

.method public static removePackageFromDb(Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;Ljava/lang/String;)V
    .locals 5
    .param p0, "cacheDb"    # Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 338
    sget-object v1, Lcom/android/launcher4/WidgetPreviewLoader;->sInvalidPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 339
    :try_start_0
    sget-object v0, Lcom/android/launcher4/WidgetPreviewLoader;->sInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    new-instance v0, Lcom/android/launcher4/WidgetPreviewLoader$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher4/WidgetPreviewLoader$2;-><init>(Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;Ljava/lang/String;)V

    .line 356
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/WidgetPreviewLoader$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 357
    return-void

    .line 338
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 7
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 609
    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/launcher4/WidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    .line 610
    return-void
.end method

.method private static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 4
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "scale"    # F

    .prologue
    .line 615
    if-eqz p1, :cond_0

    .line 616
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 617
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 618
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 619
    .local v1, "oldBounds":Landroid/graphics/Rect;
    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {p0, p2, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 620
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 621
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 622
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 624
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "oldBounds":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private writeToDb(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 325
    invoke-static {p1}, Lcom/android/launcher4/WidgetPreviewLoader;->getObjectName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mDb:Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v4}, Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 327
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 329
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 331
    .local v2, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 332
    const-string v4, "preview_bitmap"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 333
    const-string v4, "size"

    iget-object v5, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mSize:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v4, "shortcut_and_widget_previews"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 335
    return-void
.end method


# virtual methods
.method public generatePreview(Ljava/lang/Object;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 405
    if-eqz p2, :cond_1

    .line 406
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mPreviewBitmapWidth:I

    if-ne v0, v1, :cond_0

    .line 407
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mPreviewBitmapHeight:I

    if-eq v0, v1, :cond_1

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improperly sized bitmap passed as argument"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_1
    instance-of v0, p1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_2

    .line 411
    check-cast p1, Landroid/appwidget/AppWidgetProviderInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher4/WidgetPreviewLoader;->generateWidgetPreview(Landroid/appwidget/AppWidgetProviderInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 413
    :goto_0
    return-object v0

    .line 414
    .restart local p1    # "info":Ljava/lang/Object;
    :cond_2
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1    # "info":Ljava/lang/Object;
    iget v0, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mPreviewBitmapWidth:I

    iget v1, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mPreviewBitmapHeight:I

    .line 413
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/launcher4/WidgetPreviewLoader;->generateShortcutPreview(Landroid/content/pm/ResolveInfo;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public generateWidgetPreview(Landroid/appwidget/AppWidgetProviderInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 419
    iget-object v0, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/launcher4/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v10

    .line 420
    .local v10, "cellSpans":[I
    aget v0, v10, v4

    invoke-virtual {p0, v0}, Lcom/android/launcher4/WidgetPreviewLoader;->maxWidthForWidgetPreview(I)I

    move-result v6

    .line 421
    .local v6, "maxWidth":I
    aget v0, v10, v5

    invoke-virtual {p0, v0}, Lcom/android/launcher4/WidgetPreviewLoader;->maxHeightForWidgetPreview(I)I

    move-result v7

    .line 422
    .local v7, "maxHeight":I
    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iget v3, p1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 423
    aget v4, v10, v4

    aget v5, v10, v5

    const/4 v9, 0x0

    move-object v0, p0

    move-object v8, p2

    .line 422
    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher4/WidgetPreviewLoader;->generateWidgetPreview(Landroid/content/ComponentName;IIIIIILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public generateWidgetPreview(Landroid/content/ComponentName;IIIIIILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 27
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "previewImage"    # I
    .param p3, "iconId"    # I
    .param p4, "cellHSpan"    # I
    .param p5, "cellVSpan"    # I
    .param p6, "maxPreviewWidth"    # I
    .param p7, "maxPreviewHeight"    # I
    .param p8, "preview"    # Landroid/graphics/Bitmap;
    .param p9, "preScaledWidthOut"    # [I

    .prologue
    .line 440
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 441
    .local v18, "packageName":Ljava/lang/String;
    if-gez p6, :cond_0

    const p6, 0x7fffffff

    .line 442
    :cond_0
    if-gez p7, :cond_1

    const p7, 0x7fffffff

    .line 444
    :cond_1
    const/4 v14, 0x0

    .line 445
    .local v14, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_2

    .line 446
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1, v7}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 447
    if-nez v14, :cond_2

    .line 448
    const-string v6, "WidgetPreviewLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Can\'t load widget preview drawable 0x"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " for provider: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 448
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_2
    const/4 v3, 0x0

    .line 456
    .local v3, "defaultPreview":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_8

    const/16 v25, 0x1

    .line 457
    .local v25, "widgetPreviewExists":Z
    :goto_0
    if-eqz v25, :cond_9

    .line 458
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 459
    .local v10, "previewWidth":I
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 509
    .local v11, "previewHeight":I
    :cond_3
    :goto_1
    const/high16 v22, 0x3f800000    # 1.0f

    .line 510
    .local v22, "scale":F
    if-eqz p9, :cond_4

    .line 511
    const/4 v6, 0x0

    aput v10, p9, v6

    .line 513
    :cond_4
    move/from16 v0, p6

    if-le v10, v0, :cond_5

    .line 514
    move/from16 v0, p6

    int-to-float v6, v0

    int-to-float v7, v10

    div-float v22, v6, v7

    .line 516
    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v22, v6

    if-eqz v6, :cond_6

    .line 517
    int-to-float v6, v10

    mul-float v6, v6, v22

    float-to-int v10, v6

    .line 518
    int-to-float v6, v11

    mul-float v6, v6, v22

    float-to-int v11, v6

    .line 522
    :cond_6
    if-nez p8, :cond_7

    .line 523
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p8

    .line 527
    :cond_7
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v10

    div-int/lit8 v8, v6, 0x2

    .line 528
    .local v8, "x":I
    if-eqz v25, :cond_d

    .line 529
    const/4 v9, 0x0

    move-object v6, v14

    move-object/from16 v7, p8

    invoke-static/range {v6 .. v11}, Lcom/android/launcher4/WidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 548
    :goto_2
    return-object p8

    .line 456
    .end local v8    # "x":I
    .end local v10    # "previewWidth":I
    .end local v11    # "previewHeight":I
    .end local v22    # "scale":F
    .end local v25    # "widgetPreviewExists":Z
    :cond_8
    const/16 v25, 0x0

    goto :goto_0

    .line 462
    .restart local v25    # "widgetPreviewExists":Z
    :cond_9
    const/4 v6, 0x1

    move/from16 v0, p4

    if-ge v0, v6, :cond_a

    const/16 p4, 0x1

    .line 463
    :cond_a
    const/4 v6, 0x1

    move/from16 v0, p5

    if-ge v0, v6, :cond_b

    const/16 p5, 0x1

    .line 465
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 466
    const v7, 0x7f0206ab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 465
    check-cast v19, Landroid/graphics/drawable/BitmapDrawable;

    .line 468
    .local v19, "previewDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v21

    .line 470
    .local v21, "previewDrawableWidth":I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v20

    .line 471
    .local v20, "previewDrawableHeight":I
    mul-int v10, v21, p4

    .line 472
    .restart local v10    # "previewWidth":I
    mul-int v11, v20, p5

    .line 475
    .restart local v11    # "previewHeight":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 474
    invoke-static {v10, v11, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 476
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedAppWidgetPreviewCanvas:Lcom/android/launcher4/CanvasCache;

    invoke-virtual {v6}, Lcom/android/launcher4/CanvasCache;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Canvas;

    .line 477
    .local v12, "c":Landroid/graphics/Canvas;
    invoke-virtual {v12, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 478
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 479
    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 480
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 479
    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 481
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 482
    const/4 v6, 0x0

    invoke-virtual {v12, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 485
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mAppIconSize:I

    int-to-float v6, v6

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v6, v7

    float-to-int v0, v6

    move/from16 v16, v0

    .line 486
    .local v16, "minOffset":I
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 487
    .local v23, "smallestSide":I
    move/from16 v0, v23

    int-to-float v6, v0

    .line 488
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mAppIconSize:I

    mul-int/lit8 v9, v16, 0x2

    add-int/2addr v7, v9

    int-to-float v7, v7

    .line 487
    div-float/2addr v6, v7

    .line 488
    const/high16 v7, 0x3f800000    # 1.0f

    .line 487
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 491
    .local v15, "iconScale":F
    const/4 v2, 0x0

    .line 493
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    move/from16 v0, v21

    int-to-float v6, v0

    :try_start_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mAppIconSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v15

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 495
    .local v4, "hoffset":I
    move/from16 v0, v20

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mAppIconSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v15

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v5, v6

    .line 496
    .local v5, "yoffset":I
    if-lez p3, :cond_c

    .line 497
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher4/IconCache;

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher4/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 498
    :cond_c
    if-eqz v2, :cond_3

    .line 500
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mAppIconSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v15

    float-to-int v6, v6

    .line 501
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mAppIconSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v15

    float-to-int v7, v7

    .line 499
    invoke-static/range {v2 .. v7}, Lcom/android/launcher4/WidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 503
    .end local v4    # "hoffset":I
    .end local v5    # "yoffset":I
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 532
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "c":Landroid/graphics/Canvas;
    .end local v15    # "iconScale":F
    .end local v16    # "minOffset":I
    .end local v19    # "previewDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v20    # "previewDrawableHeight":I
    .end local v21    # "previewDrawableWidth":I
    .end local v23    # "smallestSide":I
    .restart local v8    # "x":I
    .restart local v22    # "scale":F
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedAppWidgetPreviewCanvas:Lcom/android/launcher4/CanvasCache;

    invoke-virtual {v6}, Lcom/android/launcher4/CanvasCache;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Canvas;

    .line 533
    .restart local v12    # "c":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedAppWidgetPreviewSrcRect:Lcom/android/launcher4/RectCache;

    invoke-virtual {v6}, Lcom/android/launcher4/RectCache;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/Rect;

    .line 534
    .local v24, "src":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedAppWidgetPreviewDestRect:Lcom/android/launcher4/RectCache;

    invoke-virtual {v6}, Lcom/android/launcher4/RectCache;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    .line 535
    .local v13, "dest":Landroid/graphics/Rect;
    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 536
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v6, v7, v9, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 537
    const/4 v6, 0x0

    add-int v7, v8, v10

    invoke-virtual {v13, v8, v6, v7, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 539
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedAppWidgetPreviewPaint:Lcom/android/launcher4/PaintCache;

    invoke-virtual {v6}, Lcom/android/launcher4/PaintCache;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Paint;

    .line 540
    .local v17, "p":Landroid/graphics/Paint;
    if-nez v17, :cond_e

    .line 541
    new-instance v17, Landroid/graphics/Paint;

    .end local v17    # "p":Landroid/graphics/Paint;
    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 542
    .restart local v17    # "p":Landroid/graphics/Paint;
    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 543
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedAppWidgetPreviewPaint:Lcom/android/launcher4/PaintCache;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/launcher4/PaintCache;->set(Ljava/lang/Object;)V

    .line 545
    :cond_e
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v12, v3, v0, v13, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 546
    const/4 v6, 0x0

    invoke-virtual {v12, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2
.end method

.method public getPreview(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 161
    invoke-static {p1}, Lcom/android/launcher4/WidgetPreviewLoader;->getObjectName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/launcher4/WidgetPreviewLoader;->getObjectPackage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    .line 165
    .local v4, "packageValid":Z
    sget-object v11, Lcom/android/launcher4/WidgetPreviewLoader;->sInvalidPackages:Ljava/util/HashSet;

    monitor-enter v11

    .line 166
    :try_start_0
    sget-object v7, Lcom/android/launcher4/WidgetPreviewLoader;->sInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v9

    .line 165
    :goto_0
    monitor-exit v11

    .line 168
    if-nez v4, :cond_1

    move-object v5, v8

    .line 234
    :goto_1
    return-object v5

    :cond_0
    move v4, v10

    .line 166
    goto :goto_0

    .line 165
    :catchall_0
    move-exception v7

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 171
    :cond_1
    if-eqz v4, :cond_3

    .line 172
    iget-object v11, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mLoadedPreviews:Ljava/util/HashMap;

    monitor-enter v11

    .line 174
    :try_start_1
    iget-object v7, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mLoadedPreviews:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mLoadedPreviews:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 175
    iget-object v7, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mLoadedPreviews:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    monitor-exit v11

    move-object v5, v7

    goto :goto_1

    .line 172
    :cond_2
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 180
    :cond_3
    const/4 v6, 0x0

    .line 181
    .local v6, "unusedBitmap":Landroid/graphics/Bitmap;
    iget-object v11, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/ArrayList;

    monitor-enter v11

    .line 183
    :goto_2
    if-eqz v6, :cond_4

    :try_start_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 184
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget v12, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mPreviewBitmapWidth:I

    if-ne v7, v12, :cond_4

    .line 185
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget v12, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mPreviewBitmapHeight:I

    if-eq v7, v12, :cond_5

    .line 186
    :cond_4
    iget-object v7, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 183
    if-gtz v7, :cond_9

    .line 189
    :cond_5
    if-eqz v6, :cond_6

    .line 190
    iget-object v7, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mCachedAppWidgetPreviewCanvas:Lcom/android/launcher4/CanvasCache;

    invoke-virtual {v7}, Lcom/android/launcher4/CanvasCache;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas;

    .line 191
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    const/4 v7, 0x0

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 193
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    .end local v0    # "c":Landroid/graphics/Canvas;
    :cond_6
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 197
    if-nez v6, :cond_7

    .line 198
    iget v7, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mPreviewBitmapWidth:I

    iget v11, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mPreviewBitmapHeight:I

    .line 199
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 198
    invoke-static {v7, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 202
    :cond_7
    const/4 v5, 0x0

    .line 204
    .local v5, "preview":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_8

    .line 205
    invoke-direct {p0, v2, v6}, Lcom/android/launcher4/WidgetPreviewLoader;->readFromDb(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 208
    :cond_8
    if-eqz v5, :cond_a

    .line 209
    iget-object v8, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mLoadedPreviews:Ljava/util/HashMap;

    monitor-enter v8

    .line 210
    :try_start_3
    iget-object v7, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mLoadedPreviews:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    monitor-exit v8

    goto/16 :goto_1

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 172
    .end local v5    # "preview":Landroid/graphics/Bitmap;
    .end local v6    # "unusedBitmap":Landroid/graphics/Bitmap;
    :catchall_2
    move-exception v7

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v7

    .line 187
    .restart local v6    # "unusedBitmap":Landroid/graphics/Bitmap;
    :cond_9
    :try_start_5
    iget-object v7, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/SoftReference;

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "unusedBitmap":Landroid/graphics/Bitmap;
    check-cast v6, Landroid/graphics/Bitmap;

    .restart local v6    # "unusedBitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 181
    .end local v6    # "unusedBitmap":Landroid/graphics/Bitmap;
    :catchall_3
    move-exception v7

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v7

    .line 215
    .restart local v5    # "preview":Landroid/graphics/Bitmap;
    .restart local v6    # "unusedBitmap":Landroid/graphics/Bitmap;
    :cond_a
    invoke-virtual {p0, p1, v6}, Lcom/android/launcher4/WidgetPreviewLoader;->generatePreview(Ljava/lang/Object;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 216
    .local v1, "generatedPreview":Landroid/graphics/Bitmap;
    move-object v5, v1

    .line 217
    if-eq v5, v6, :cond_b

    .line 218
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "generatePreview is not recycling the bitmap "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 221
    :cond_b
    iget-object v11, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mLoadedPreviews:Ljava/util/HashMap;

    monitor-enter v11

    .line 222
    :try_start_6
    iget-object v7, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mLoadedPreviews:Ljava/util/HashMap;

    new-instance v12, Ljava/lang/ref/WeakReference;

    invoke-direct {v12, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 227
    new-instance v7, Lcom/android/launcher4/WidgetPreviewLoader$1;

    invoke-direct {v7, p0, p1, v1}, Lcom/android/launcher4/WidgetPreviewLoader$1;-><init>(Lcom/android/launcher4/WidgetPreviewLoader;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 232
    sget-object v11, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v10, v10, [Ljava/lang/Void;

    aput-object v8, v10, v9

    invoke-virtual {v7, v11, v10}, Lcom/android/launcher4/WidgetPreviewLoader$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 221
    :catchall_4
    move-exception v7

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v7
.end method

.method public maxHeightForWidgetPreview(I)I
    .locals 2
    .param p1, "spanY"    # I

    .prologue
    .line 432
    iget v0, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mPreviewBitmapHeight:I

    .line 433
    iget-object v1, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mWidgetSpacingLayout:Lcom/android/launcher4/PagedViewCellLayout;

    invoke-virtual {v1, p1}, Lcom/android/launcher4/PagedViewCellLayout;->estimateCellHeight(I)I

    move-result v1

    .line 432
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public maxWidthForWidgetPreview(I)I
    .locals 2
    .param p1, "spanX"    # I

    .prologue
    .line 427
    iget v0, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mPreviewBitmapWidth:I

    .line 428
    iget-object v1, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mWidgetSpacingLayout:Lcom/android/launcher4/PagedViewCellLayout;

    invoke-virtual {v1, p1}, Lcom/android/launcher4/PagedViewCellLayout;->estimateCellWidth(I)I

    move-result v1

    .line 427
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public recycleBitmap(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "bitmapToRecycle"    # Landroid/graphics/Bitmap;

    .prologue
    .line 239
    invoke-static {p1}, Lcom/android/launcher4/WidgetPreviewLoader;->getObjectName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mLoadedPreviews:Ljava/util/HashMap;

    monitor-enter v3

    .line 241
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mLoadedPreviews:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mLoadedPreviews:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 243
    .local v0, "b":Landroid/graphics/Bitmap;
    if-ne v0, p2, :cond_1

    .line 244
    iget-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mLoadedPreviews:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    iget-object v4, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    :try_start_1
    iget-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 255
    return-void

    .line 246
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 240
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 251
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Bitmap passed in doesn\'t match up"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method public setPreviewSize(IILcom/android/launcher4/PagedViewCellLayout;)V
    .locals 2
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I
    .param p3, "widgetSpacingLayout"    # Lcom/android/launcher4/PagedViewCellLayout;

    .prologue
    .line 154
    iput p1, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mPreviewBitmapWidth:I

    .line 155
    iput p2, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mPreviewBitmapHeight:I

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mSize:Ljava/lang/String;

    .line 157
    iput-object p3, p0, Lcom/android/launcher4/WidgetPreviewLoader;->mWidgetSpacingLayout:Lcom/android/launcher4/PagedViewCellLayout;

    .line 158
    return-void
.end method
