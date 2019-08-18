.class public Lcom/android/launcher4/PagedViewWidget;
.super Landroid/widget/LinearLayout;
.source "PagedViewWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;,
        Lcom/android/launcher4/PagedViewWidget$ShortPressListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PagedViewWidgetLayout"

.field private static sDeletePreviewsWhenDetachedFromWindow:Z

.field private static sRecyclePreviewsWhenDetachedFromWindow:Z

.field static sShortpressTarget:Lcom/android/launcher4/PagedViewWidget;


# instance fields
.field private mDimensionsFormatString:Ljava/lang/String;

.field private mInfo:Ljava/lang/Object;

.field mIsAppWidget:Z

.field private final mOriginalImagePadding:Landroid/graphics/Rect;

.field mPendingCheckForShortPress:Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;

.field mShortPressListener:Lcom/android/launcher4/PagedViewWidget$ShortPressListener;

.field mShortPressTriggered:Z

.field private mWidgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 41
    sput-boolean v0, Lcom/android/launcher4/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    .line 42
    sput-boolean v0, Lcom/android/launcher4/PagedViewWidget;->sRecyclePreviewsWhenDetachedFromWindow:Z

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher4/PagedViewWidget;->sShortpressTarget:Lcom/android/launcher4/PagedViewWidget;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-object v1, p0, Lcom/android/launcher4/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;

    .line 46
    iput-object v1, p0, Lcom/android/launcher4/PagedViewWidget;->mShortPressListener:Lcom/android/launcher4/PagedViewWidget$ShortPressListener;

    .line 47
    iput-boolean v2, p0, Lcom/android/launcher4/PagedViewWidget;->mShortPressTriggered:Z

    .line 50
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    .line 68
    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedViewWidget;->setWillNotDraw(Z)V

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedViewWidget;->setClipToPadding(Z)V

    .line 70
    return-void
.end method

.method private checkForShortPress()V
    .locals 4

    .prologue
    .line 205
    sget-object v0, Lcom/android/launcher4/PagedViewWidget;->sShortpressTarget:Lcom/android/launcher4/PagedViewWidget;

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;

    if-nez v0, :cond_1

    .line 207
    new-instance v0, Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;

    invoke-direct {v0, p0}, Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;-><init>(Lcom/android/launcher4/PagedViewWidget;)V

    iput-object v0, p0, Lcom/android/launcher4/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;

    const-wide/16 v2, 0x78

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher4/PagedViewWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private cleanUpShortPress()V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/launcher4/PagedViewWidget;->removeShortPressCallback()V

    .line 223
    iget-boolean v0, p0, Lcom/android/launcher4/PagedViewWidget;->mShortPressTriggered:Z

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/launcher4/PagedViewWidget;->mShortPressListener:Lcom/android/launcher4/PagedViewWidget$ShortPressListener;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/launcher4/PagedViewWidget;->mShortPressListener:Lcom/android/launcher4/PagedViewWidget$ShortPressListener;

    invoke-interface {v0, p0}, Lcom/android/launcher4/PagedViewWidget$ShortPressListener;->cleanUpShortPress(Landroid/view/View;)V

    .line 227
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/PagedViewWidget;->mShortPressTriggered:Z

    .line 229
    :cond_1
    return-void
.end method

.method private removeShortPressCallback()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/launcher4/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/launcher4/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher4/PagedViewWidget$CheckForShortPress;

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedViewWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 219
    :cond_0
    return-void
.end method

.method static resetShortPressTarget()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher4/PagedViewWidget;->sShortpressTarget:Lcom/android/launcher4/PagedViewWidget;

    .line 233
    return-void
.end method

.method public static setDeletePreviewsWhenDetachedFromWindow(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 96
    sput-boolean p0, Lcom/android/launcher4/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    .line 97
    return-void
.end method

.method public static setRecyclePreviewsWhenDetachedFromWindow(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 100
    sput-boolean p0, Lcom/android/launcher4/PagedViewWidget;->sRecyclePreviewsWhenDetachedFromWindow:Z

    .line 101
    return-void
.end method


# virtual methods
.method public applyFromAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;I[ILcom/android/launcher4/WidgetPreviewLoader;)V
    .locals 11
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "maxWidth"    # I
    .param p3, "cellSpan"    # [I
    .param p4, "loader"    # Lcom/android/launcher4/WidgetPreviewLoader;

    .prologue
    .line 122
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 123
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v2

    .line 125
    .local v2, "grid":Lcom/android/launcher4/DeviceProfile;
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher4/PagedViewWidget;->mIsAppWidget:Z

    .line 126
    iput-object p1, p0, Lcom/android/launcher4/PagedViewWidget;->mInfo:Ljava/lang/Object;

    .line 127
    const v7, 0x7f110014

    invoke-virtual {p0, v7}, Lcom/android/launcher4/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 128
    .local v4, "image":Landroid/widget/ImageView;
    const/4 v7, -0x1

    if-le p2, v7, :cond_0

    .line 129
    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 131
    :cond_0
    const v7, 0x7f110015

    invoke-virtual {p0, v7}, Lcom/android/launcher4/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 132
    .local v5, "name":Landroid/widget/TextView;
    iget-object v7, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const v7, 0x7f110016

    invoke-virtual {p0, v7}, Lcom/android/launcher4/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 134
    .local v1, "dims":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 135
    const/4 v7, 0x0

    aget v7, p3, v7

    iget v8, v2, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 136
    .local v3, "hSpan":I
    const/4 v7, 0x1

    aget v7, p3, v7

    iget v8, v2, Lcom/android/launcher4/DeviceProfile;->numRows:F

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 137
    .local v6, "vSpan":I
    iget-object v7, p0, Lcom/android/launcher4/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .end local v3    # "hSpan":I
    .end local v6    # "vSpan":I
    :cond_1
    iput-object p4, p0, Lcom/android/launcher4/PagedViewWidget;->mWidgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;

    .line 140
    return-void
.end method

.method public applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher4/WidgetPreviewLoader;)V
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "loader"    # Lcom/android/launcher4/WidgetPreviewLoader;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 144
    iput-boolean v7, p0, Lcom/android/launcher4/PagedViewWidget;->mIsAppWidget:Z

    .line 145
    iput-object p2, p0, Lcom/android/launcher4/PagedViewWidget;->mInfo:Ljava/lang/Object;

    .line 146
    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 147
    .local v1, "label":Ljava/lang/CharSequence;
    const v3, 0x7f110015

    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 148
    .local v2, "name":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const v3, 0x7f110016

    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    .local v0, "dims":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/launcher4/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    iput-object p3, p0, Lcom/android/launcher4/PagedViewWidget;->mWidgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;

    .line 154
    return-void
.end method

.method applyPreview(Lcom/android/launcher4/FastBitmapDrawable;I)V
    .locals 7
    .param p1, "preview"    # Lcom/android/launcher4/FastBitmapDrawable;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 166
    const v3, 0x7f110014

    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/PagedViewWidgetImageView;

    .line 167
    .local v1, "image":Lcom/android/launcher4/PagedViewWidgetImageView;
    if-eqz p1, :cond_1

    .line 168
    iput-boolean v4, v1, Lcom/android/launcher4/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    .line 169
    invoke-virtual {v1, p1}, Lcom/android/launcher4/PagedViewWidgetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-boolean v3, p0, Lcom/android/launcher4/PagedViewWidget;->mIsAppWidget:Z

    if-eqz v3, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/launcher4/PagedViewWidget;->getPreviewSize()[I

    move-result-object v2

    .line 173
    .local v2, "imageSize":[I
    aget v3, v2, v4

    invoke-virtual {p1}, Lcom/android/launcher4/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 174
    .local v0, "centerAmount":I
    iget-object v3, p0, Lcom/android/launcher4/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    .line 175
    iget-object v4, p0, Lcom/android/launcher4/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 176
    iget-object v5, p0, Lcom/android/launcher4/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 177
    iget-object v6, p0, Lcom/android/launcher4/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 174
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/launcher4/PagedViewWidgetImageView;->setPadding(IIII)V

    .line 179
    .end local v0    # "centerAmount":I
    .end local v2    # "imageSize":[I
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/android/launcher4/PagedViewWidgetImageView;->setAlpha(F)V

    .line 180
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/launcher4/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    .line 182
    :cond_1
    return-void
.end method

.method public getPreviewSize()[I
    .locals 5

    .prologue
    .line 157
    const v2, 0x7f110014

    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 158
    .local v0, "i":Landroid/widget/ImageView;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 159
    .local v1, "maxSize":[I
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher4/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher4/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 160
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher4/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 161
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 107
    sget-boolean v2, Lcom/android/launcher4/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    if-eqz v2, :cond_1

    .line 108
    const v2, 0x7f110014

    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 109
    .local v0, "image":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/FastBitmapDrawable;

    .line 111
    .local v1, "preview":Lcom/android/launcher4/FastBitmapDrawable;
    sget-boolean v2, Lcom/android/launcher4/PagedViewWidget;->sRecyclePreviewsWhenDetachedFromWindow:Z

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/launcher4/PagedViewWidget;->mInfo:Ljava/lang/Object;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher4/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/launcher4/PagedViewWidget;->mWidgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;

    iget-object v3, p0, Lcom/android/launcher4/PagedViewWidget;->mInfo:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/launcher4/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher4/WidgetPreviewLoader;->recycleBitmap(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 115
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    .end local v0    # "image":Landroid/widget/ImageView;
    .end local v1    # "preview":Lcom/android/launcher4/FastBitmapDrawable;
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 74
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 76
    const v5, 0x7f110014

    invoke-virtual {p0, v5}, Lcom/android/launcher4/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 77
    .local v3, "image":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/launcher4/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 78
    iget-object v5, p0, Lcom/android/launcher4/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 79
    iget-object v5, p0, Lcom/android/launcher4/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 80
    iget-object v5, p0, Lcom/android/launcher4/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 83
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 84
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v2

    .line 85
    .local v2, "grid":Lcom/android/launcher4/DeviceProfile;
    const v5, 0x7f110015

    invoke-virtual {p0, v5}, Lcom/android/launcher4/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 86
    .local v4, "name":Landroid/widget/TextView;
    if-eqz v4, :cond_0

    .line 87
    iget v5, v2, Lcom/android/launcher4/DeviceProfile;->iconTextSize:F

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 89
    :cond_0
    const v5, 0x7f110016

    invoke-virtual {p0, v5}, Lcom/android/launcher4/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    .local v1, "dims":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 91
    iget v5, v2, Lcom/android/launcher4/DeviceProfile;->iconTextSize:F

    invoke-virtual {v1, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 260
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 241
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher4/PagedViewWidget;->cleanUpShortPress()V

    goto :goto_0

    .line 244
    :pswitch_2
    invoke-direct {p0}, Lcom/android/launcher4/PagedViewWidget;->checkForShortPress()V

    goto :goto_0

    .line 247
    :pswitch_3
    invoke-direct {p0}, Lcom/android/launcher4/PagedViewWidget;->cleanUpShortPress()V

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method setShortPressListener(Lcom/android/launcher4/PagedViewWidget$ShortPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher4/PagedViewWidget$ShortPressListener;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/launcher4/PagedViewWidget;->mShortPressListener:Lcom/android/launcher4/PagedViewWidget$ShortPressListener;

    .line 186
    return-void
.end method
