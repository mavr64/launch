.class Limagecoverflow/CoverFlowView$4;
.super Ljava/lang/Object;
.source "CoverFlowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Limagecoverflow/CoverFlowView;->setSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Limagecoverflow/CoverFlowView;

.field private final synthetic val$max:I

.field private final synthetic val$myPosition:I


# direct methods
.method constructor <init>(Limagecoverflow/CoverFlowView;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Limagecoverflow/CoverFlowView$4;->this$0:Limagecoverflow/CoverFlowView;

    iput p2, p0, Limagecoverflow/CoverFlowView$4;->val$myPosition:I

    iput p3, p0, Limagecoverflow/CoverFlowView$4;->val$max:I

    .line 1110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1113
    iget-object v0, p0, Limagecoverflow/CoverFlowView$4;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v0}, Limagecoverflow/CoverFlowView;->access$1(Limagecoverflow/CoverFlowView;)I

    move-result v0

    iget v4, p0, Limagecoverflow/CoverFlowView$4;->val$myPosition:I

    if-eq v0, v4, :cond_2

    .line 1114
    iget-object v0, p0, Limagecoverflow/CoverFlowView$4;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v0}, Limagecoverflow/CoverFlowView;->access$11(Limagecoverflow/CoverFlowView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Limagecoverflow/CoverFlowView$4;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v0}, Limagecoverflow/CoverFlowView;->access$11(Limagecoverflow/CoverFlowView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1117
    :cond_0
    iget-object v0, p0, Limagecoverflow/CoverFlowView$4;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v0}, Limagecoverflow/CoverFlowView;->access$4(Limagecoverflow/CoverFlowView;)F

    move-result v0

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v0, v4

    float-to-int v1, v0

    .line 1118
    .local v1, "from":I
    iget v0, p0, Limagecoverflow/CoverFlowView$4;->val$myPosition:I

    iget-object v4, p0, Limagecoverflow/CoverFlowView$4;->this$0:Limagecoverflow/CoverFlowView;

    iget v4, v4, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    sub-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x64

    sub-int v3, v0, v1

    .line 1122
    .local v3, "disX":I
    iget v0, p0, Limagecoverflow/CoverFlowView$4;->val$myPosition:I

    iget v4, p0, Limagecoverflow/CoverFlowView$4;->val$max:I

    add-int/2addr v0, v4

    iget-object v4, p0, Limagecoverflow/CoverFlowView$4;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v4}, Limagecoverflow/CoverFlowView;->access$1(Limagecoverflow/CoverFlowView;)I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1123
    iget v4, p0, Limagecoverflow/CoverFlowView$4;->val$myPosition:I

    iget-object v6, p0, Limagecoverflow/CoverFlowView$4;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v6}, Limagecoverflow/CoverFlowView;->access$1(Limagecoverflow/CoverFlowView;)I

    move-result v6

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1121
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1120
    mul-int/lit16 v5, v0, 0xc8

    .line 1124
    .local v5, "durtion":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v4, 0x1f4

    if-le v0, v4, :cond_1

    .line 1125
    const/16 v5, 0x12c

    .line 1127
    :cond_1
    const/4 v5, 0x0

    .line 1128
    iget-object v0, p0, Limagecoverflow/CoverFlowView$4;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v0}, Limagecoverflow/CoverFlowView;->access$11(Limagecoverflow/CoverFlowView;)Landroid/widget/Scroller;

    move-result-object v0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1129
    iget-object v0, p0, Limagecoverflow/CoverFlowView$4;->this$0:Limagecoverflow/CoverFlowView;

    invoke-virtual {v0}, Limagecoverflow/CoverFlowView;->invalidate()V

    .line 1131
    .end local v1    # "from":I
    .end local v3    # "disX":I
    .end local v5    # "durtion":I
    :cond_2
    return-void
.end method
