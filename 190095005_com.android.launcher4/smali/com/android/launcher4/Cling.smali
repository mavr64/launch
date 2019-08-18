.class public Lcom/android/launcher4/Cling;
.super Landroid/widget/FrameLayout;
.source "Cling.java"

# interfaces
.implements Lcom/android/launcher4/Insettable;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static FIRST_RUN_CIRCLE_BUFFER_DPS:F = 0.0f

.field static final FIRST_RUN_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling_gel.first_run.dismissed"

.field private static FIRST_RUN_LANDSCAPE:Ljava/lang/String; = null

.field private static FIRST_RUN_PORTRAIT:Ljava/lang/String; = null

.field static final FOLDER_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling_gel.folder.dismissed"

.field private static FOLDER_LANDSCAPE:Ljava/lang/String; = null

.field private static FOLDER_LARGE:Ljava/lang/String; = null

.field private static FOLDER_PORTRAIT:Ljava/lang/String; = null

.field private static WORKSPACE_CIRCLE_Y_OFFSET_DPS:F = 0.0f

.field static final WORKSPACE_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling_gel.workspace.dismissed"

.field private static WORKSPACE_CUSTOM:Ljava/lang/String;

.field private static WORKSPACE_INNER_CIRCLE_RADIUS_DPS:F

.field private static WORKSPACE_LANDSCAPE:Ljava/lang/String;

.field private static WORKSPACE_LARGE:Ljava/lang/String;

.field private static WORKSPACE_OUTER_CIRCLE_RADIUS_DPS:F

.field private static WORKSPACE_PORTRAIT:Ljava/lang/String;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundColor:I

.field private mBubblePaint:Landroid/graphics/Paint;

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDrawIdentifier:Ljava/lang/String;

.field private mErasePaint:Landroid/graphics/Paint;

.field private mFocusedHotseatApp:Landroid/graphics/drawable/Drawable;

.field private mFocusedHotseatAppBounds:Landroid/graphics/Rect;

.field private mFocusedHotseatAppComponent:Landroid/content/ComponentName;

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsInitialized:Z

.field private mLauncher:Lcom/android/launcher4/Launcher;

.field private mScrimView:Landroid/view/View;

.field private mTouchDownPt:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x42700000    # 60.0f

    .line 47
    const-string v0, "first_run_portrait"

    sput-object v0, Lcom/android/launcher4/Cling;->FIRST_RUN_PORTRAIT:Ljava/lang/String;

    .line 48
    const-string v0, "first_run_landscape"

    sput-object v0, Lcom/android/launcher4/Cling;->FIRST_RUN_LANDSCAPE:Ljava/lang/String;

    .line 50
    const-string v0, "workspace_portrait"

    sput-object v0, Lcom/android/launcher4/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    .line 51
    const-string v0, "workspace_landscape"

    sput-object v0, Lcom/android/launcher4/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    .line 52
    const-string v0, "workspace_large"

    sput-object v0, Lcom/android/launcher4/Cling;->WORKSPACE_LARGE:Ljava/lang/String;

    .line 53
    const-string v0, "workspace_custom"

    sput-object v0, Lcom/android/launcher4/Cling;->WORKSPACE_CUSTOM:Ljava/lang/String;

    .line 55
    const-string v0, "folder_portrait"

    sput-object v0, Lcom/android/launcher4/Cling;->FOLDER_PORTRAIT:Ljava/lang/String;

    .line 56
    const-string v0, "folder_landscape"

    sput-object v0, Lcom/android/launcher4/Cling;->FOLDER_LANDSCAPE:Ljava/lang/String;

    .line 57
    const-string v0, "folder_large"

    sput-object v0, Lcom/android/launcher4/Cling;->FOLDER_LARGE:Ljava/lang/String;

    .line 59
    sput v1, Lcom/android/launcher4/Cling;->FIRST_RUN_CIRCLE_BUFFER_DPS:F

    .line 60
    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/android/launcher4/Cling;->WORKSPACE_INNER_CIRCLE_RADIUS_DPS:F

    .line 61
    sput v1, Lcom/android/launcher4/Cling;->WORKSPACE_OUTER_CIRCLE_RADIUS_DPS:F

    .line 62
    const/high16 v0, 0x41f00000    # 30.0f

    sput v0, Lcom/android/launcher4/Cling;->WORKSPACE_CIRCLE_Y_OFFSET_DPS:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher4/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher4/Cling;->mTouchDownPt:[I

    .line 82
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/Cling;->mInsets:Landroid/graphics/Rect;

    .line 95
    sget-object v1, Lcom/android/launcher4/R$styleable;->Cling:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher4/Cling;->setClickable(Z)V

    .line 101
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/Cling;)Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher4/Cling;->mScrimView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method bringScrimToFront()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/launcher4/Cling;->mScrimView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/launcher4/Cling;->mScrimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 275
    :cond_0
    return-void
.end method

.method cleanup()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/Cling;->mIsInitialized:Z

    .line 269
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 365
    iget-boolean v9, p0, Lcom/android/launcher4/Cling;->mIsInitialized:Z

    if-eqz v9, :cond_4

    .line 366
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 369
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_0

    .line 370
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v10, Lcom/android/launcher4/Cling;->WORKSPACE_CUSTOM:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/android/launcher4/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02000e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher4/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 375
    :cond_0
    const/4 v5, 0x0

    .line 376
    .local v5, "eraseBg":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 377
    .local v6, "eraseCanvas":Landroid/graphics/Canvas;
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mScrimView:Landroid/view/View;

    if-eqz v9, :cond_5

    .line 379
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mScrimView:Landroid/view/View;

    iget v10, p0, Lcom/android/launcher4/Cling;->mBackgroundColor:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 396
    :goto_0
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 397
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher4/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/launcher4/Cling;->getAlpha()F

    move-result v0

    .line 399
    .local v0, "alpha":F
    invoke-virtual {p0}, Lcom/android/launcher4/Cling;->getContent()Landroid/view/View;

    move-result-object v4

    .line 400
    .local v4, "content":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 401
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v9

    mul-float/2addr v0, v9

    .line 403
    :cond_1
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v10, Lcom/android/launcher4/Cling;->FIRST_RUN_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 404
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v10, Lcom/android/launcher4/Cling;->FIRST_RUN_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 406
    :cond_2
    const v9, 0x7f11004a

    invoke-virtual {p0, v9}, Lcom/android/launcher4/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 407
    .local v1, "bubbleContent":Landroid/view/View;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 408
    .local v2, "bubbleRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 409
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mBubblePaint:Landroid/graphics/Paint;

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v0

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 410
    sget v9, Lcom/android/launcher4/Cling;->FIRST_RUN_CIRCLE_BUFFER_DPS:F

    invoke-static {v9, v7}, Lcom/android/launcher4/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v9

    int-to-float v3, v9

    .line 411
    .local v3, "buffer":F
    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    .line 412
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    .line 413
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    .line 414
    iget-object v12, p0, Lcom/android/launcher4/Cling;->mBubblePaint:Landroid/graphics/Paint;

    .line 411
    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 451
    .end local v1    # "bubbleContent":Landroid/view/View;
    .end local v2    # "bubbleRect":Landroid/graphics/Rect;
    .end local v3    # "buffer":F
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 455
    .end local v0    # "alpha":F
    .end local v4    # "content":Landroid/view/View;
    .end local v5    # "eraseBg":Landroid/graphics/Bitmap;
    .end local v6    # "eraseCanvas":Landroid/graphics/Canvas;
    .end local v7    # "metrics":Landroid/util/DisplayMetrics;
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 456
    return-void

    .line 380
    .restart local v5    # "eraseBg":Landroid/graphics/Bitmap;
    .restart local v6    # "eraseCanvas":Landroid/graphics/Canvas;
    :cond_5
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_6

    .line 381
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/launcher4/Cling;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/launcher4/Cling;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 382
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 383
    :cond_6
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v10, Lcom/android/launcher4/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 384
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v10, Lcom/android/launcher4/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 385
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v10, Lcom/android/launcher4/Cling;->WORKSPACE_LARGE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 387
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher4/Cling;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher4/Cling;->getMeasuredHeight()I

    move-result v10

    .line 388
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 387
    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 389
    new-instance v6, Landroid/graphics/Canvas;

    .end local v6    # "eraseCanvas":Landroid/graphics/Canvas;
    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 390
    .restart local v6    # "eraseCanvas":Landroid/graphics/Canvas;
    iget v9, p0, Lcom/android/launcher4/Cling;->mBackgroundColor:I

    invoke-virtual {v6, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_0

    .line 392
    :cond_8
    iget v9, p0, Lcom/android/launcher4/Cling;->mBackgroundColor:I

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_0

    .line 415
    .restart local v0    # "alpha":F
    .restart local v4    # "content":Landroid/view/View;
    .restart local v7    # "metrics":Landroid/util/DisplayMetrics;
    :cond_9
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v10, Lcom/android/launcher4/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 416
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v10, Lcom/android/launcher4/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 417
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v10, Lcom/android/launcher4/Cling;->WORKSPACE_LARGE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 418
    :cond_a
    sget v9, Lcom/android/launcher4/Cling;->WORKSPACE_CIRCLE_Y_OFFSET_DPS:F

    invoke-static {v9, v7}, Lcom/android/launcher4/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v8

    .line 419
    .local v8, "offset":I
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mErasePaint:Landroid/graphics/Paint;

    const/16 v10, 0x80

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 420
    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    .line 421
    iget v10, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v10, v8

    int-to-float v10, v10

    .line 422
    const/4 v11, 0x0

    .line 423
    iget-object v12, p0, Lcom/android/launcher4/Cling;->mErasePaint:Landroid/graphics/Paint;

    .line 420
    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 428
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mErasePaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 429
    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    .line 430
    iget v10, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v10, v8

    int-to-float v10, v10

    .line 431
    const/4 v11, 0x0

    .line 432
    iget-object v12, p0, Lcom/android/launcher4/Cling;->mErasePaint:Landroid/graphics/Paint;

    .line 429
    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 437
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1, v5, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 438
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 439
    const/4 v5, 0x0

    .line 442
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mFocusedHotseatAppBounds:Landroid/graphics/Rect;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/launcher4/Cling;->mFocusedHotseatApp:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    .line 443
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mFocusedHotseatApp:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Lcom/android/launcher4/Cling;->mFocusedHotseatAppBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    .line 444
    iget-object v11, p0, Lcom/android/launcher4/Cling;->mFocusedHotseatAppBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/launcher4/Cling;->mFocusedHotseatAppBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    .line 445
    iget-object v13, p0, Lcom/android/launcher4/Cling;->mFocusedHotseatAppBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    .line 443
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 446
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mFocusedHotseatApp:Landroid/graphics/drawable/Drawable;

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v0

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 447
    iget-object v9, p0, Lcom/android/launcher4/Cling;->mFocusedHotseatApp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 293
    invoke-virtual {p0, p0, p1}, Lcom/android/launcher4/Cling;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 298
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 284
    const v0, 0x7f110017

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getDrawIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method hide(ILjava/lang/Runnable;)V
    .locals 5
    .param p1, "duration"    # I
    .param p2, "postCb"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    .line 224
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher4/Cling;->FIRST_RUN_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher4/Cling;->FIRST_RUN_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/Cling;->getContent()Landroid/view/View;

    move-result-object v0

    .line 227
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 228
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 229
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 230
    new-instance v2, Lcom/android/launcher4/Cling$2;

    invoke-direct {v2, p0, p2}, Lcom/android/launcher4/Cling$2;-><init>(Lcom/android/launcher4/Cling;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 253
    .end local v0    # "content":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 255
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 256
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 257
    new-instance v2, Lcom/android/launcher4/Cling$4;

    invoke-direct {v2, p0}, Lcom/android/launcher4/Cling$4;-><init>(Lcom/android/launcher4/Cling;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 264
    :cond_1
    return-void

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher4/Cling;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 240
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 241
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 242
    new-instance v2, Lcom/android/launcher4/Cling$3;

    invoke-direct {v2, p0, p2}, Lcom/android/launcher4/Cling$3;-><init>(Lcom/android/launcher4/Cling;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method init(Lcom/android/launcher4/Launcher;Landroid/view/View;)V
    .locals 5
    .param p1, "l"    # Lcom/android/launcher4/Launcher;
    .param p2, "scrim"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 104
    iget-boolean v1, p0, Lcom/android/launcher4/Cling;->mIsInitialized:Z

    if-nez v1, :cond_0

    .line 105
    iput-object p1, p0, Lcom/android/launcher4/Cling;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 106
    iput-object p2, p0, Lcom/android/launcher4/Cling;->mScrimView:Landroid/view/View;

    .line 107
    const/high16 v1, -0x23000000

    iput v1, p0, Lcom/android/launcher4/Cling;->mBackgroundColor:I

    .line 108
    invoke-virtual {p0, p0}, Lcom/android/launcher4/Cling;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 109
    invoke-virtual {p0, p0}, Lcom/android/launcher4/Cling;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {p0, p0}, Lcom/android/launcher4/Cling;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/Cling;->mErasePaint:Landroid/graphics/Paint;

    .line 113
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mErasePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 114
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mErasePaint:Landroid/graphics/Paint;

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mErasePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 116
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher4/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 119
    const v2, 0x7f09000c

    .line 118
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 120
    .local v0, "circleColor":I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/Cling;->mBubblePaint:Landroid/graphics/Paint;

    .line 121
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mBubblePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mBubblePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/Cling;->mDotPaint:Landroid/graphics/Paint;

    .line 125
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mDotPaint:Landroid/graphics/Paint;

    const v2, 0x72bbed

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iput-boolean v4, p0, Lcom/android/launcher4/Cling;->mIsInitialized:Z

    .line 130
    .end local v0    # "circleColor":I
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher4/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher4/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher4/Cling;->WORKSPACE_LARGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mFocusedHotseatAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mFocusedHotseatAppBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher4/Cling;->mTouchDownPt:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/launcher4/Cling;->mTouchDownPt:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mFocusedHotseatAppComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 345
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mLauncher:Lcom/android/launcher4/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher4/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 347
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1, p0}, Lcom/android/launcher4/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    .line 350
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher4/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher4/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher4/Cling;->WORKSPACE_LARGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher4/Cling;->WORKSPACE_CUSTOM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher4/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher4/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher4/Cling;->WORKSPACE_LARGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Cling;->mLauncher:Lcom/android/launcher4/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    .line 358
    const/4 v0, 0x1

    .line 360
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 328
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/launcher4/Cling;->mTouchDownPt:[I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    .line 330
    iget-object v0, p0, Lcom/android/launcher4/Cling;->mTouchDownPt:[I

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 332
    :cond_0
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 311
    iget-object v2, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher4/Cling;->FOLDER_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher4/Cling;->FOLDER_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher4/Cling;->FOLDER_LARGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/android/launcher4/Cling;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->getOpenFolder()Lcom/android/launcher4/Folder;

    move-result-object v0

    .line 315
    .local v0, "f":Lcom/android/launcher4/Folder;
    if-eqz v0, :cond_1

    .line 316
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 317
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Lcom/android/launcher4/Folder;->getHitRect(Landroid/graphics/Rect;)V

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    const/4 v2, 0x0

    .line 323
    .end local v0    # "f":Lcom/android/launcher4/Folder;
    .end local v1    # "r":Landroid/graphics/Rect;
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method setFocusedHotseatApp(IILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "drawableId"    # I
    .param p2, "appRank"    # I
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 137
    .local v8, "r":Landroid/content/res/Resources;
    move/from16 v3, p1

    .line 138
    .local v3, "appIconId":I
    const/4 v6, 0x0

    .line 139
    .local v6, "hotseat":Lcom/android/launcher4/Hotseat;
    if-eqz v6, :cond_2

    const/4 v12, -0x1

    if-le v3, v12, :cond_2

    const/4 v12, -0x1

    move/from16 v0, p2

    if-le v0, v12, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 140
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 142
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/android/launcher4/Hotseat;->getCellXFromOrder(I)I

    move-result v10

    .line 143
    .local v10, "x":I
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/android/launcher4/Hotseat;->getCellYFromOrder(I)I

    move-result v11

    .line 144
    .local v11, "y":I
    invoke-virtual {v6, v10, v11}, Lcom/android/launcher4/Hotseat;->getCellCoordinates(II)Landroid/graphics/Rect;

    move-result-object v7

    .line 145
    .local v7, "pos":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v2

    .line 146
    .local v2, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v2}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v5

    .line 147
    .local v5, "grid":Lcom/android/launcher4/DeviceProfile;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher4/Cling;->mFocusedHotseatApp:Landroid/graphics/drawable/Drawable;

    .line 148
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher4/Cling;->mFocusedHotseatAppComponent:Landroid/content/ComponentName;

    .line 149
    new-instance v12, Landroid/graphics/Rect;

    iget v13, v7, Landroid/graphics/Rect;->left:I

    iget v14, v7, Landroid/graphics/Rect;->top:I

    .line 150
    iget v15, v7, Landroid/graphics/Rect;->left:I

    sget v16, Lcom/android/launcher4/Utilities;->sIconTextureWidth:I

    add-int v15, v15, v16

    .line 151
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sget v17, Lcom/android/launcher4/Utilities;->sIconTextureHeight:I

    add-int v16, v16, v17

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 149
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher4/Cling;->mFocusedHotseatAppBounds:Landroid/graphics/Rect;

    .line 152
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher4/Cling;->mFocusedHotseatAppBounds:Landroid/graphics/Rect;

    .line 153
    iget v13, v5, Lcom/android/launcher4/DeviceProfile;->hotseatIconSize:F

    iget v14, v5, Lcom/android/launcher4/DeviceProfile;->iconSize:F

    div-float/2addr v13, v14

    .line 152
    invoke-static {v12, v13}, Lcom/android/launcher4/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 156
    const v12, 0x7f11009a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher4/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 157
    .local v9, "v":Landroid/widget/TextView;
    if-eqz v9, :cond_0

    .line 158
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_0
    const v12, 0x7f11009b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher4/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "v":Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 163
    .restart local v9    # "v":Landroid/widget/TextView;
    if-eqz v9, :cond_1

    .line 164
    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_1
    const v12, 0x7f110099

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher4/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 169
    .local v4, "bubble":Landroid/view/View;
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .end local v2    # "app":Lcom/android/launcher4/LauncherAppState;
    .end local v4    # "bubble":Landroid/view/View;
    .end local v5    # "grid":Lcom/android/launcher4/DeviceProfile;
    .end local v7    # "pos":Landroid/graphics/Rect;
    .end local v9    # "v":Landroid/widget/TextView;
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_2
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/launcher4/Cling;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 280
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher4/Cling;->setPadding(IIII)V

    .line 281
    return-void
.end method

.method show(ZI)V
    .locals 8
    .param p1, "animate"    # Z
    .param p2, "duration"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 174
    invoke-virtual {p0, v7}, Lcom/android/launcher4/Cling;->setVisibility(I)V

    .line 175
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v5}, Lcom/android/launcher4/Cling;->setLayerType(ILandroid/graphics/Paint;)V

    .line 176
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher4/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher4/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher4/Cling;->WORKSPACE_LARGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher4/Cling;->WORKSPACE_CUSTOM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/Cling;->getContent()Landroid/view/View;

    move-result-object v0

    .line 181
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 182
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 183
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 184
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 185
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 187
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Cling;->setAlpha(F)V

    .line 204
    .end local v0    # "content":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mScrimView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mScrimView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 207
    iget-object v1, p0, Lcom/android/launcher4/Cling;->mScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 208
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 209
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 210
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 214
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher4/Cling;->setFocusableInTouchMode(Z)V

    .line 215
    new-instance v1, Lcom/android/launcher4/Cling$1;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Cling$1;-><init>(Lcom/android/launcher4/Cling;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher4/Cling;->post(Ljava/lang/Runnable;)Z

    .line 221
    return-void

    .line 189
    :cond_2
    if-eqz p1, :cond_3

    .line 190
    invoke-virtual {p0}, Lcom/android/launcher4/Cling;->buildLayer()V

    .line 191
    invoke-virtual {p0, v6}, Lcom/android/launcher4/Cling;->setAlpha(F)V

    .line 192
    invoke-virtual {p0}, Lcom/android/launcher4/Cling;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 194
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 195
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 196
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 199
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Cling;->setAlpha(F)V

    goto :goto_0
.end method
