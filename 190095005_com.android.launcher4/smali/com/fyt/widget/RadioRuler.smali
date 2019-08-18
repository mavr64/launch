.class public Lcom/fyt/widget/RadioRuler;
.super Landroid/view/View;
.source "RadioRuler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyt/widget/RadioRuler$ICallback;
    }
.end annotation


# static fields
.field private static final msg_rulerview_anim:I


# instance fields
.field private handler:Landroid/os/Handler;

.field public mAction:I

.field private mBitmapPointer:Landroid/graphics/Bitmap;

.field private mCallback:Lcom/fyt/widget/RadioRuler$ICallback;

.field private mCurMark:I

.field private mMaintainTime:I

.field public mPaint:Landroid/graphics/Paint;

.field private mRPoint:I

.field private mStartMark:I

.field private mStartTime:J

.field private mTargetMark:I

.field public mX:I

.field public mXBak:I

.field private radioMarkRange:I

.field private radiomarkL:I

.field private radiomarkR:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/fyt/widget/RadioRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    .line 26
    const-string v2, "getwidth"

    const-string v3, "integer"

    .line 25
    invoke-virtual {v1, v2, v3}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    iput v0, p0, Lcom/fyt/widget/RadioRuler;->radioMarkRange:I

    .line 27
    iget v0, p0, Lcom/fyt/widget/RadioRuler;->radioMarkRange:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/fyt/widget/RadioRuler;->radiomarkR:I

    .line 28
    const/4 v0, 0x6

    iput v0, p0, Lcom/fyt/widget/RadioRuler;->radiomarkL:I

    .line 29
    new-instance v0, Lcom/fyt/widget/RadioRuler$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/RadioRuler$1;-><init>(Lcom/fyt/widget/RadioRuler;)V

    iput-object v0, p0, Lcom/fyt/widget/RadioRuler;->handler:Landroid/os/Handler;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fyt/widget/RadioRuler;->mPaint:Landroid/graphics/Paint;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/fyt/widget/RadioRuler;->mCurMark:I

    .line 66
    invoke-direct {p0, p1}, Lcom/fyt/widget/RadioRuler;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Lcom/fyt/widget/RadioRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    .line 26
    const-string v2, "getwidth"

    const-string v3, "integer"

    .line 25
    invoke-virtual {v1, v2, v3}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    iput v0, p0, Lcom/fyt/widget/RadioRuler;->radioMarkRange:I

    .line 27
    iget v0, p0, Lcom/fyt/widget/RadioRuler;->radioMarkRange:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/fyt/widget/RadioRuler;->radiomarkR:I

    .line 28
    const/4 v0, 0x6

    iput v0, p0, Lcom/fyt/widget/RadioRuler;->radiomarkL:I

    .line 29
    new-instance v0, Lcom/fyt/widget/RadioRuler$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/RadioRuler$1;-><init>(Lcom/fyt/widget/RadioRuler;)V

    iput-object v0, p0, Lcom/fyt/widget/RadioRuler;->handler:Landroid/os/Handler;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fyt/widget/RadioRuler;->mPaint:Landroid/graphics/Paint;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/fyt/widget/RadioRuler;->mCurMark:I

    .line 71
    invoke-direct {p0, p1}, Lcom/fyt/widget/RadioRuler;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-virtual {p0}, Lcom/fyt/widget/RadioRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    .line 26
    const-string v2, "getwidth"

    const-string v3, "integer"

    .line 25
    invoke-virtual {v1, v2, v3}, Lshare/ResValue;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    iput v0, p0, Lcom/fyt/widget/RadioRuler;->radioMarkRange:I

    .line 27
    iget v0, p0, Lcom/fyt/widget/RadioRuler;->radioMarkRange:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/fyt/widget/RadioRuler;->radiomarkR:I

    .line 28
    const/4 v0, 0x6

    iput v0, p0, Lcom/fyt/widget/RadioRuler;->radiomarkL:I

    .line 29
    new-instance v0, Lcom/fyt/widget/RadioRuler$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/RadioRuler$1;-><init>(Lcom/fyt/widget/RadioRuler;)V

    iput-object v0, p0, Lcom/fyt/widget/RadioRuler;->handler:Landroid/os/Handler;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fyt/widget/RadioRuler;->mPaint:Landroid/graphics/Paint;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/fyt/widget/RadioRuler;->mCurMark:I

    .line 76
    invoke-direct {p0, p1}, Lcom/fyt/widget/RadioRuler;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/fyt/widget/RadioRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->radio_pointer:I

    .line 80
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fyt/widget/RadioRuler;->mBitmapPointer:Landroid/graphics/Bitmap;

    .line 82
    iget-object v0, p0, Lcom/fyt/widget/RadioRuler;->mBitmapPointer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fyt/widget/RadioRuler;->mRPoint:I

    .line 83
    iget-object v0, p0, Lcom/fyt/widget/RadioRuler;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 84
    iget-object v0, p0, Lcom/fyt/widget/RadioRuler;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/fyt/widget/RadioRuler;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v0, p0, Lcom/fyt/widget/RadioRuler;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 87
    return-void
.end method

.method private setOffset(IZ)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "callback"    # Z

    .prologue
    .line 155
    const/4 v1, 0x6

    if-ge p1, v1, :cond_2

    .line 156
    iget p1, p0, Lcom/fyt/widget/RadioRuler;->radioMarkRange:I

    .line 160
    :cond_0
    :goto_0
    iput p1, p0, Lcom/fyt/widget/RadioRuler;->mCurMark:I

    .line 162
    invoke-virtual {p0}, Lcom/fyt/widget/RadioRuler;->invalidate()V

    .line 164
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/fyt/widget/RadioRuler;->mCallback:Lcom/fyt/widget/RadioRuler$ICallback;

    if-eqz v1, :cond_1

    .line 165
    iget v1, p0, Lcom/fyt/widget/RadioRuler;->mCurMark:I

    add-int/lit8 v1, v1, -0x6

    int-to-float v1, v1

    iget v2, p0, Lcom/fyt/widget/RadioRuler;->radiomarkR:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 166
    .local v0, "ratio":F
    iget-object v1, p0, Lcom/fyt/widget/RadioRuler;->mCallback:Lcom/fyt/widget/RadioRuler$ICallback;

    invoke-interface {v1, v0}, Lcom/fyt/widget/RadioRuler$ICallback;->uiChange(F)V

    .line 168
    .end local v0    # "ratio":F
    :cond_1
    return-void

    .line 157
    :cond_2
    iget v1, p0, Lcom/fyt/widget/RadioRuler;->radioMarkRange:I

    if-le p1, v1, :cond_0

    .line 158
    const/4 p1, 0x6

    goto :goto_0
.end method


# virtual methods
.method public doAnim()V
    .locals 8

    .prologue
    .line 131
    iget v0, p0, Lcom/fyt/widget/RadioRuler;->mMaintainTime:I

    if-eqz v0, :cond_0

    .line 133
    iget v0, p0, Lcom/fyt/widget/RadioRuler;->mStartMark:I

    int-to-long v0, v0

    iget v2, p0, Lcom/fyt/widget/RadioRuler;->mTargetMark:I

    iget v3, p0, Lcom/fyt/widget/RadioRuler;->mStartMark:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/fyt/widget/RadioRuler;->mStartTime:J

    sub-long/2addr v4, v6

    mul-long/2addr v2, v4

    .line 135
    iget v4, p0, Lcom/fyt/widget/RadioRuler;->mMaintainTime:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    .line 133
    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 135
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, v0, v1}, Lcom/fyt/widget/RadioRuler;->setOffset(IZ)V

    .line 136
    :cond_0
    return-void
.end method

.method public getmCurMark()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/fyt/widget/RadioRuler;->mCurMark:I

    return v0
.end method

.method public isAnimEnd()Z
    .locals 4

    .prologue
    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fyt/widget/RadioRuler;->mStartTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/fyt/widget/RadioRuler;->mMaintainTime:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v1, 0x50

    .line 213
    iget-object v0, p0, Lcom/fyt/widget/RadioRuler;->mBitmapPointer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 214
    iget v0, p0, Lcom/fyt/widget/RadioRuler;->mCurMark:I

    if-ge v0, v1, :cond_2

    .line 215
    iput v1, p0, Lcom/fyt/widget/RadioRuler;->mCurMark:I

    .line 220
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fyt/widget/RadioRuler;->mBitmapPointer:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fyt/widget/RadioRuler;->mCurMark:I

    iget v2, p0, Lcom/fyt/widget/RadioRuler;->mRPoint:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 223
    :cond_1
    return-void

    .line 216
    :cond_2
    iget v0, p0, Lcom/fyt/widget/RadioRuler;->mCurMark:I

    iget v1, p0, Lcom/fyt/widget/RadioRuler;->radioMarkRange:I

    if-le v0, v1, :cond_0

    .line 217
    iget v0, p0, Lcom/fyt/widget/RadioRuler;->radioMarkRange:I

    iput v0, p0, Lcom/fyt/widget/RadioRuler;->mCurMark:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iput v2, p0, Lcom/fyt/widget/RadioRuler;->mAction:I

    .line 173
    iget v2, p0, Lcom/fyt/widget/RadioRuler;->mAction:I

    if-nez v2, :cond_1

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/fyt/widget/RadioRuler;->mX:I

    .line 175
    iget v2, p0, Lcom/fyt/widget/RadioRuler;->mX:I

    iput v2, p0, Lcom/fyt/widget/RadioRuler;->mXBak:I

    .line 202
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 176
    :cond_1
    iget v2, p0, Lcom/fyt/widget/RadioRuler;->mAction:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/fyt/widget/RadioRuler;->mX:I

    .line 179
    iget v2, p0, Lcom/fyt/widget/RadioRuler;->mXBak:I

    iget v3, p0, Lcom/fyt/widget/RadioRuler;->mX:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    .line 180
    iget v2, p0, Lcom/fyt/widget/RadioRuler;->mX:I

    iput v2, p0, Lcom/fyt/widget/RadioRuler;->mXBak:I

    .line 181
    iget v2, p0, Lcom/fyt/widget/RadioRuler;->mX:I

    invoke-direct {p0, v2, v4}, Lcom/fyt/widget/RadioRuler;->setOffset(IZ)V

    goto :goto_0

    .line 183
    :cond_2
    iget v2, p0, Lcom/fyt/widget/RadioRuler;->mAction:I

    if-ne v2, v4, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 185
    .local v0, "offset":I
    const/4 v2, 0x6

    if-ge v0, v2, :cond_5

    .line 186
    const/4 v0, 0x6

    .line 190
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x6

    .line 192
    iget-object v2, p0, Lcom/fyt/widget/RadioRuler;->mCallback:Lcom/fyt/widget/RadioRuler$ICallback;

    if-eqz v2, :cond_0

    .line 193
    iget v2, p0, Lcom/fyt/widget/RadioRuler;->radiomarkR:I

    div-int v2, v0, v2

    int-to-float v1, v2

    .line 194
    .local v1, "ratio":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_6

    .line 195
    const/high16 v1, 0x3f800000    # 1.0f

    .line 198
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/fyt/widget/RadioRuler;->mCallback:Lcom/fyt/widget/RadioRuler$ICallback;

    invoke-interface {v2, v1}, Lcom/fyt/widget/RadioRuler$ICallback;->uiChange(F)V

    .line 199
    iget-object v2, p0, Lcom/fyt/widget/RadioRuler;->mCallback:Lcom/fyt/widget/RadioRuler$ICallback;

    iget v3, p0, Lcom/fyt/widget/RadioRuler;->radiomarkR:I

    invoke-interface {v2, v0, v3}, Lcom/fyt/widget/RadioRuler$ICallback;->cmdChange(II)V

    goto :goto_0

    .line 187
    .end local v1    # "ratio":F
    :cond_5
    iget v2, p0, Lcom/fyt/widget/RadioRuler;->radioMarkRange:I

    if-le v0, v2, :cond_3

    .line 188
    iget v0, p0, Lcom/fyt/widget/RadioRuler;->radioMarkRange:I

    goto :goto_1

    .line 196
    .restart local v1    # "ratio":F
    :cond_6
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    .line 197
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public setCallback(Lcom/fyt/widget/RadioRuler$ICallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/fyt/widget/RadioRuler$ICallback;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fyt/widget/RadioRuler;->mCallback:Lcom/fyt/widget/RadioRuler$ICallback;

    .line 97
    return-void
.end method

.method public setTargetMark(III)V
    .locals 3
    .param p1, "freq"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 147
    const/high16 v0, 0x40c00000    # 6.0f

    iget v1, p0, Lcom/fyt/widget/RadioRuler;->radiomarkR:I

    sub-int v2, p1, p2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sub-int v2, p3, p2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fyt/widget/RadioRuler;->setOffset(IZ)V

    .line 148
    return-void
.end method

.method public setTargetMarkAnim(III)V
    .locals 5
    .param p1, "freq"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 116
    const/high16 v2, 0x40c00000    # 6.0f

    iget v3, p0, Lcom/fyt/widget/RadioRuler;->radiomarkR:I

    sub-int v4, p1, p2

    mul-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p3, p2

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 118
    .local v1, "targetMark":I
    iget v2, p0, Lcom/fyt/widget/RadioRuler;->mCurMark:I

    if-ne v2, v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 122
    :cond_0
    iget v2, p0, Lcom/fyt/widget/RadioRuler;->mCurMark:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/fyt/widget/RadioRuler;->radiomarkR:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 123
    .local v0, "ratio":F
    iget v2, p0, Lcom/fyt/widget/RadioRuler;->mCurMark:I

    iput v2, p0, Lcom/fyt/widget/RadioRuler;->mStartMark:I

    .line 124
    iput v1, p0, Lcom/fyt/widget/RadioRuler;->mTargetMark:I

    .line 125
    const/high16 v2, 0x442f0000    # 700.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/fyt/widget/RadioRuler;->mMaintainTime:I

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fyt/widget/RadioRuler;->mStartTime:J

    .line 127
    iget-object v2, p0, Lcom/fyt/widget/RadioRuler;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setToTarget()V
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lcom/fyt/widget/RadioRuler;->mTargetMark:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fyt/widget/RadioRuler;->setOffset(IZ)V

    .line 144
    return-void
.end method
