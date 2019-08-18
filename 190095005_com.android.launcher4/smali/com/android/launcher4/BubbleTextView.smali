.class public Lcom/android/launcher4/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"


# static fields
.field static final PADDING_H:F = 8.0f

.field static final PADDING_V:F = 3.0f

.field static final SHADOW_LARGE_COLOUR:I = -0x23000000

.field static SHADOW_LARGE_RADIUS:F = 0.0f

.field static final SHADOW_SMALL_COLOUR:I = -0x34000000

.field static SHADOW_SMALL_RADIUS:F = 0.0f

.field static final SHADOW_Y_OFFSET:F = 2.0f


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mDidInvalidateForPressedState:Z

.field private mFocusedGlowColor:I

.field private mFocusedOutlineColor:I

.field private mIsTextVisible:Z

.field private mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

.field private mOutlineHelper:Lcom/android/launcher4/HolographicOutlineHelper;

.field private mPressedGlowColor:I

.field private mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

.field private mPressedOutlineColor:I

.field private mPrevAlpha:I

.field private mShadowsEnabled:Z

.field private mStayPressed:Z

.field private final mTempCanvas:Landroid/graphics/Canvas;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/android/launcher4/LauncherApplication;->shadow_Large_Radius:F

    sput v0, Lcom/android/launcher4/BubbleTextView;->SHADOW_LARGE_RADIUS:F

    .line 46
    sget v0, Lcom/android/launcher4/LauncherApplication;->shadow_Small_Radius:F

    sput v0, Lcom/android/launcher4/BubbleTextView;->SHADOW_SMALL_RADIUS:F

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher4/BubbleTextView;->mPrevAlpha:I

    .line 56
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/BubbleTextView;->mShadowsEnabled:Z

    .line 77
    invoke-direct {p0}, Lcom/android/launcher4/BubbleTextView;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher4/BubbleTextView;->mPrevAlpha:I

    .line 56
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/BubbleTextView;->mShadowsEnabled:Z

    .line 82
    invoke-direct {p0}, Lcom/android/launcher4/BubbleTextView;->init()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher4/BubbleTextView;->mPrevAlpha:I

    .line 56
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/BubbleTextView;->mShadowsEnabled:Z

    .line 87
    invoke-direct {p0}, Lcom/android/launcher4/BubbleTextView;->init()V

    .line 88
    return-void
.end method

.method private createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "outlineColor"    # I
    .param p3, "glowColor"    # I

    .prologue
    .line 248
    iget-object v2, p0, Lcom/android/launcher4/BubbleTextView;->mOutlineHelper:Lcom/android/launcher4/HolographicOutlineHelper;

    iget v1, v2, Lcom/android/launcher4/HolographicOutlineHelper;->mMaxOuterBlurRadius:I

    .line 250
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 249
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 253
    invoke-direct {p0, p1, v1}, Lcom/android/launcher4/BubbleTextView;->drawWithPadding(Landroid/graphics/Canvas;I)V

    .line 254
    iget-object v2, p0, Lcom/android/launcher4/BubbleTextView;->mOutlineHelper:Lcom/android/launcher4/HolographicOutlineHelper;

    invoke-virtual {v2, v0, p1, p3, p2}, Lcom/android/launcher4/HolographicOutlineHelper;->applyExtraThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 255
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 257
    return-object v0
.end method

.method private drawWithPadding(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "destCanvas"    # Landroid/graphics/Canvas;
    .param p2, "padding"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 225
    .local v0, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/launcher4/BubbleTextView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 228
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 235
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getScaleY()F

    move-result v2

    .line 236
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getHeight()I

    move-result v4

    add-int/2addr v4, p2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 235
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 237
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v2, p2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v3, p2, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 238
    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/launcher4/BubbleTextView;->draw(Landroid/graphics/Canvas;)V

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 241
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 107
    new-instance v1, Lcom/android/launcher4/CheckLongPressHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher4/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher4/BubbleTextView;->mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 110
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher4/HolographicOutlineHelper;->obtain(Landroid/content/Context;)Lcom/android/launcher4/HolographicOutlineHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/BubbleTextView;->mOutlineHelper:Lcom/android/launcher4/HolographicOutlineHelper;

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 113
    iput v1, p0, Lcom/android/launcher4/BubbleTextView;->mPressedGlowColor:I

    iput v1, p0, Lcom/android/launcher4/BubbleTextView;->mPressedOutlineColor:I

    iput v1, p0, Lcom/android/launcher4/BubbleTextView;->mFocusedGlowColor:I

    iput v1, p0, Lcom/android/launcher4/BubbleTextView;->mFocusedOutlineColor:I

    .line 116
    sget v1, Lcom/android/launcher4/BubbleTextView;->SHADOW_LARGE_RADIUS:F

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x23000000

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher4/BubbleTextView;->setShadowLayer(FFFI)V

    .line 117
    return-void
.end method


# virtual methods
.method public applyFromShortcutInfo(Lcom/android/launcher4/ShortcutInfo;Lcom/android/launcher4/IconCache;)V
    .locals 8
    .param p1, "info"    # Lcom/android/launcher4/ShortcutInfo;
    .param p2, "iconCache"    # Lcom/android/launcher4/IconCache;

    .prologue
    const/4 v7, 0x0

    .line 120
    invoke-virtual {p1, p2}, Lcom/android/launcher4/ShortcutInfo;->getIcon(Lcom/android/launcher4/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 121
    .local v1, "b":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 122
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v2

    .line 125
    .local v2, "grid":Lcom/android/launcher4/DeviceProfile;
    invoke-static {v1}, Lcom/android/launcher4/Utilities;->createIconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 124
    invoke-virtual {p0, v7, v6, v7, v7}, Lcom/android/launcher4/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 127
    sget-object v6, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0033

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 128
    .local v3, "padding":I
    invoke-virtual {p0, v3}, Lcom/android/launcher4/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 131
    sget-object v6, Lcom/android/launcher4/LauncherApplication;->typeface:Landroid/graphics/Typeface;

    if-eqz v6, :cond_0

    .line 132
    sget-object v6, Lcom/android/launcher4/LauncherApplication;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v6}, Lcom/android/launcher4/BubbleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 135
    :cond_0
    const-string v6, "com.syu.voice.VoiceLaunch"

    iget-object v7, p1, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 136
    const-string v6, "com.syu.voice.Launch"

    iget-object v7, p1, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 137
    :cond_1
    const-string v6, "syu.voicename"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "voicename":Ljava/lang/String;
    const-string v6, "persist.syu.voice.newname"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "voicenewname":Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u8f66\u52a9\u7406\u00b7"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/launcher4/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .end local v4    # "voicename":Ljava/lang/String;
    .end local v5    # "voicenewname":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher4/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 153
    return-void

    .line 142
    .restart local v4    # "voicename":Ljava/lang/String;
    .restart local v5    # "voicenewname":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 144
    const-string v6, "\u5929\u4e4b\u773c"

    invoke-virtual {p0, v6}, Lcom/android/launcher4/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v6, p1, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/android/launcher4/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 149
    .end local v4    # "voicename":Ljava/lang/String;
    .end local v5    # "voicenewname":Ljava/lang/String;
    :cond_4
    iget-object v6, p1, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/android/launcher4/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 427
    invoke-super {p0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 429
    iget-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher4/CheckLongPressHelper;->cancelLongPress()V

    .line 430
    return-void
.end method

.method clearPressedOrFocusedBackground()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 322
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 323
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 335
    iget-boolean v0, p0, Lcom/android/launcher4/BubbleTextView;->mShadowsEnabled:Z

    if-nez v0, :cond_0

    .line 336
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 376
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v6, p0, Lcom/android/launcher4/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 341
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_2

    .line 342
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getScrollX()I

    move-result v7

    .line 343
    .local v7, "scrollX":I
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getScrollY()I

    move-result v8

    .line 345
    .local v8, "scrollY":I
    iget-boolean v0, p0, Lcom/android/launcher4/BubbleTextView;->mBackgroundSizeChanged:Z

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v6, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 347
    iput-boolean v3, p0, Lcom/android/launcher4/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 350
    :cond_1
    or-int v0, v7, v8

    if-nez v0, :cond_3

    .line 351
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 360
    .end local v7    # "scrollX":I
    .end local v8    # "scrollY":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 361
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 362
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 353
    .restart local v7    # "scrollX":I
    .restart local v8    # "scrollY":I
    :cond_3
    int-to-float v0, v7

    int-to-float v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 354
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 355
    neg-int v0, v7

    int-to-float v0, v0

    neg-int v1, v8

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 367
    .end local v7    # "scrollX":I
    .end local v8    # "scrollY":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget v1, Lcom/android/launcher4/BubbleTextView;->SHADOW_LARGE_RADIUS:F

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x23000000

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 368
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 369
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 370
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getExtendedPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    .line 371
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    .line 372
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    .line 370
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 373
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget v1, Lcom/android/launcher4/BubbleTextView;->SHADOW_SMALL_RADIUS:F

    const/high16 v2, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1, v9, v9, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 374
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 375
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 181
    iget-boolean v3, p0, Lcom/android/launcher4/BubbleTextView;->mDidInvalidateForPressedState:Z

    if-nez v3, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 210
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher4/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 211
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 214
    :cond_1
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 215
    return-void

    .line 187
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v5, p0, Lcom/android/launcher4/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v5, :cond_5

    move v0, v3

    .line 188
    .local v0, "backgroundEmptyBefore":Z
    :goto_1
    iget-boolean v5, p0, Lcom/android/launcher4/BubbleTextView;->mStayPressed:Z

    if-nez v5, :cond_3

    .line 189
    iput-object v6, p0, Lcom/android/launcher4/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 191
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/launcher4/BubbleTextView;->setFocusable(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 193
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-nez v5, :cond_6

    .line 196
    iput-object v6, p0, Lcom/android/launcher4/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 201
    :goto_2
    iput-boolean v4, p0, Lcom/android/launcher4/BubbleTextView;->mStayPressed:Z

    .line 202
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 204
    :cond_4
    iget-object v5, p0, Lcom/android/launcher4/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v5, :cond_7

    move v1, v3

    .line 205
    .local v1, "backgroundEmptyNow":Z
    :goto_3
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    goto :goto_0

    .end local v0    # "backgroundEmptyBefore":Z
    .end local v1    # "backgroundEmptyNow":Z
    :cond_5
    move v0, v4

    .line 187
    goto :goto_1

    .line 199
    .restart local v0    # "backgroundEmptyBefore":Z
    :cond_6
    iget-object v5, p0, Lcom/android/launcher4/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    iget v6, p0, Lcom/android/launcher4/BubbleTextView;->mFocusedGlowColor:I

    iget v7, p0, Lcom/android/launcher4/BubbleTextView;->mFocusedOutlineColor:I

    .line 198
    invoke-direct {p0, v5, v6, v7}, Lcom/android/launcher4/BubbleTextView;->createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher4/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_7
    move v1, v4

    .line 204
    goto :goto_3
.end method

.method getPressedOrFocusedBackground()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getPressedOrFocusedBackgroundPadding()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mOutlineHelper:Lcom/android/launcher4/HolographicOutlineHelper;

    iget v0, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mMaxOuterBlurRadius:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isTextVisible()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/android/launcher4/BubbleTextView;->mIsTextVisible:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 380
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 381
    iget-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 382
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 386
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 387
    iget-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 388
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 94
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 95
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 96
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/launcher4/DeviceProfile;->iconTextSize:F

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher4/BubbleTextView;->setTextSize(IF)V

    .line 97
    sget-object v2, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 98
    const v3, 0x7f0a001c

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 98
    if-eqz v2, :cond_0

    .line 99
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/android/launcher4/BubbleTextView;->setTextColor(I)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher4/BubbleTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 418
    iget v0, p0, Lcom/android/launcher4/BubbleTextView;->mPrevAlpha:I

    if-eq v0, p1, :cond_0

    .line 419
    iput p1, p0, Lcom/android/launcher4/BubbleTextView;->mPrevAlpha:I

    .line 420
    invoke-super {p0, p1}, Landroid/widget/TextView;->onSetAlpha(I)Z

    .line 422
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 266
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 297
    :goto_0
    :pswitch_0
    return v0

    .line 271
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher4/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/launcher4/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/android/launcher4/BubbleTextView;->mPressedGlowColor:I

    iget v3, p0, Lcom/android/launcher4/BubbleTextView;->mPressedOutlineColor:I

    .line 272
    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher4/BubbleTextView;->createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher4/BubbleTextView;->mDidInvalidateForPressedState:Z

    .line 279
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 284
    :goto_1
    iget-object v1, p0, Lcom/android/launcher4/BubbleTextView;->mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher4/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    .line 281
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher4/BubbleTextView;->mDidInvalidateForPressedState:Z

    goto :goto_1

    .line 290
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 291
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher4/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/android/launcher4/BubbleTextView;->mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher4/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setCellLayoutPressedOrFocusedIcon()V
    .locals 3

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher4/ShortcutAndWidgetContainer;

    if-eqz v2, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/ShortcutAndWidgetContainer;

    .line 313
    .local v1, "parent":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {v1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 315
    .local v0, "layout":Lcom/android/launcher4/CellLayout;
    iget-object v2, p0, Lcom/android/launcher4/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .end local p0    # "this":Lcom/android/launcher4/BubbleTextView;
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/launcher4/CellLayout;->setPressedOrFocusedIcon(Lcom/android/launcher4/BubbleTextView;)V

    .line 318
    .end local v0    # "layout":Lcom/android/launcher4/CellLayout;
    .end local v1    # "parent":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    :cond_0
    return-void

    .line 315
    .restart local v0    # "layout":Lcom/android/launcher4/CellLayout;
    .restart local v1    # "parent":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    .restart local p0    # "this":Lcom/android/launcher4/BubbleTextView;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getLeft()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getRight()I

    move-result v0

    if-ne v0, p3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getTop()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getBottom()I

    move-result v0

    if-eq v0, p4, :cond_1

    .line 158
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 160
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setShadowsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/android/launcher4/BubbleTextView;->mShadowsEnabled:Z

    .line 398
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 399
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->invalidate()V

    .line 400
    return-void
.end method

.method setStayPressed(Z)V
    .locals 1
    .param p1, "stayPressed"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/android/launcher4/BubbleTextView;->mStayPressed:Z

    .line 304
    if-nez p1, :cond_0

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 308
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 171
    check-cast v0, Lcom/android/launcher4/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher4/LauncherModel;->checkItemInfo(Lcom/android/launcher4/ItemInfo;)V

    .line 173
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 392
    iput p1, p0, Lcom/android/launcher4/BubbleTextView;->mTextColor:I

    .line 393
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/launcher4/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 404
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 405
    iget v1, p0, Lcom/android/launcher4/BubbleTextView;->mTextColor:I

    invoke-super {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    :goto_0
    iput-boolean p1, p0, Lcom/android/launcher4/BubbleTextView;->mIsTextVisible:Z

    .line 410
    return-void

    .line 407
    :cond_0
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/launcher4/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
