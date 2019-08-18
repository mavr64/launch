.class Lcom/syu/util/Print$DrawMsgView;
.super Landroid/view/View;
.source "Print.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/util/Print;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawMsgView"
.end annotation


# instance fields
.field private final MAX:I

.field MSG:[Ljava/lang/String;

.field count:I

.field private mUIThread:Ljava/lang/Thread;

.field paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/syu/util/Print;


# direct methods
.method public constructor <init>(Lcom/syu/util/Print;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v0, 0x10

    .line 231
    iput-object p1, p0, Lcom/syu/util/Print$DrawMsgView;->this$0:Lcom/syu/util/Print;

    .line 232
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 216
    iput v0, p0, Lcom/syu/util/Print$DrawMsgView;->MAX:I

    .line 217
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/syu/util/Print$DrawMsgView;->MSG:[Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/util/Print$DrawMsgView;->count:I

    .line 220
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/syu/util/Print$DrawMsgView;->paint:Landroid/graphics/Paint;

    .line 233
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/util/Print$DrawMsgView;->mUIThread:Ljava/lang/Thread;

    .line 234
    return-void
.end method

.method public constructor <init>(Lcom/syu/util/Print;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v0, 0x10

    .line 227
    iput-object p1, p0, Lcom/syu/util/Print$DrawMsgView;->this$0:Lcom/syu/util/Print;

    .line 228
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 216
    iput v0, p0, Lcom/syu/util/Print$DrawMsgView;->MAX:I

    .line 217
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/syu/util/Print$DrawMsgView;->MSG:[Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/util/Print$DrawMsgView;->count:I

    .line 220
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/syu/util/Print$DrawMsgView;->paint:Landroid/graphics/Paint;

    .line 229
    return-void
.end method

.method public constructor <init>(Lcom/syu/util/Print;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    const/16 v0, 0x10

    .line 223
    iput-object p1, p0, Lcom/syu/util/Print$DrawMsgView;->this$0:Lcom/syu/util/Print;

    .line 224
    invoke-direct {p0, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
    iput v0, p0, Lcom/syu/util/Print$DrawMsgView;->MAX:I

    .line 217
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/syu/util/Print$DrawMsgView;->MSG:[Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/util/Print$DrawMsgView;->count:I

    .line 220
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/syu/util/Print$DrawMsgView;->paint:Landroid/graphics/Paint;

    .line 225
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/syu/util/Print$DrawMsgView;->mUIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 256
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 268
    iget-object v3, p0, Lcom/syu/util/Print$DrawMsgView;->paint:Landroid/graphics/Paint;

    const/16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    iget-object v3, p0, Lcom/syu/util/Print$DrawMsgView;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 270
    const/16 v2, 0x8

    .line 272
    .local v2, "x":I
    const/16 v0, 0x1e

    .line 273
    .local v0, "heiht":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    .line 278
    return-void

    .line 274
    :cond_0
    iget-object v3, p0, Lcom/syu/util/Print$DrawMsgView;->MSG:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 275
    iget-object v3, p0, Lcom/syu/util/Print$DrawMsgView;->MSG:[Ljava/lang/String;

    aget-object v3, v3, v1

    int-to-float v4, v2

    add-int/lit8 v5, v1, 0x1

    mul-int/2addr v5, v0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/syu/util/Print$DrawMsgView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 273
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0xf

    .line 237
    iget v2, p0, Lcom/syu/util/Print$DrawMsgView;->count:I

    if-ge v2, v5, :cond_1

    .line 238
    iget-object v2, p0, Lcom/syu/util/Print$DrawMsgView;->MSG:[Ljava/lang/String;

    iget v3, p0, Lcom/syu/util/Print$DrawMsgView;->count:I

    aput-object p1, v2, v3

    .line 239
    iget v2, p0, Lcom/syu/util/Print$DrawMsgView;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/syu/util/Print$DrawMsgView;->count:I

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/syu/util/Print$DrawMsgView;->invalidate()V

    .line 251
    return-void

    .line 241
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 242
    if-ge v0, v4, :cond_2

    .line 243
    iget-object v2, p0, Lcom/syu/util/Print$DrawMsgView;->MSG:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v1, v2, v3

    .line 244
    .local v1, "tmp":Ljava/lang/String;
    iget-object v2, p0, Lcom/syu/util/Print$DrawMsgView;->MSG:[Ljava/lang/String;

    aput-object v1, v2, v0

    .line 241
    .end local v1    # "tmp":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_2
    iget-object v2, p0, Lcom/syu/util/Print$DrawMsgView;->MSG:[Ljava/lang/String;

    aput-object p1, v2, v4

    goto :goto_1
.end method
