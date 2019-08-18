.class Limagecoverflow/CoverFlowView$1;
.super Landroid/database/DataSetObserver;
.source "CoverFlowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Limagecoverflow/CoverFlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Limagecoverflow/CoverFlowView;


# direct methods
.method constructor <init>(Limagecoverflow/CoverFlowView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    .line 176
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 180
    iget-object v1, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v1}, Limagecoverflow/CoverFlowView;->access$0(Limagecoverflow/CoverFlowView;)Limagecoverflow/CoverFlowAdapter;

    move-result-object v1

    invoke-virtual {v1}, Limagecoverflow/CoverFlowAdapter;->getCount()I

    move-result v0

    .line 185
    .local v0, "nextItemCount":I
    iget-object v1, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v1}, Limagecoverflow/CoverFlowView;->access$1(Limagecoverflow/CoverFlowView;)I

    move-result v1

    iget-object v2, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v2}, Limagecoverflow/CoverFlowView;->access$2(Limagecoverflow/CoverFlowView;)I

    move-result v2

    rem-int/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    if-le v1, v2, :cond_0

    .line 186
    iget-object v1, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    iget-object v2, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    iget v2, v2, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    sub-int v2, v0, v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-static {v1, v2}, Limagecoverflow/CoverFlowView;->access$3(Limagecoverflow/CoverFlowView;F)V

    .line 201
    :goto_0
    iget-object v1, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v1, v0}, Limagecoverflow/CoverFlowView;->access$5(Limagecoverflow/CoverFlowView;I)V

    .line 202
    iget-object v1, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v1}, Limagecoverflow/CoverFlowView;->access$6(Limagecoverflow/CoverFlowView;)V

    .line 204
    iget-object v1, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-virtual {v1}, Limagecoverflow/CoverFlowView;->requestLayout()V

    .line 205
    iget-object v1, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-virtual {v1}, Limagecoverflow/CoverFlowView;->invalidate()V

    .line 206
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 207
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v1}, Limagecoverflow/CoverFlowView;->access$4(Limagecoverflow/CoverFlowView;)F

    move-result v2

    iget-object v3, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    iget v3, v3, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Limagecoverflow/CoverFlowView;->access$3(Limagecoverflow/CoverFlowView;F)V

    .line 191
    :cond_1
    :goto_1
    iget-object v1, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v1}, Limagecoverflow/CoverFlowView;->access$4(Limagecoverflow/CoverFlowView;)F

    move-result v1

    cmpg-float v1, v1, v4

    if-ltz v1, :cond_2

    iget-object v1, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v1}, Limagecoverflow/CoverFlowView;->access$4(Limagecoverflow/CoverFlowView;)F

    move-result v1

    iget-object v2, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v2}, Limagecoverflow/CoverFlowView;->access$2(Limagecoverflow/CoverFlowView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gez v1, :cond_2

    .line 198
    iget-object v1, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v1}, Limagecoverflow/CoverFlowView;->access$4(Limagecoverflow/CoverFlowView;)F

    move-result v2

    iget-object v3, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    iget v3, v3, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Limagecoverflow/CoverFlowView;->access$3(Limagecoverflow/CoverFlowView;F)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v1, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v1}, Limagecoverflow/CoverFlowView;->access$4(Limagecoverflow/CoverFlowView;)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    .line 193
    iget-object v1, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v1}, Limagecoverflow/CoverFlowView;->access$4(Limagecoverflow/CoverFlowView;)F

    move-result v2

    iget-object v3, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v3}, Limagecoverflow/CoverFlowView;->access$2(Limagecoverflow/CoverFlowView;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Limagecoverflow/CoverFlowView;->access$3(Limagecoverflow/CoverFlowView;F)V

    goto :goto_1

    .line 194
    :cond_3
    iget-object v1, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v1}, Limagecoverflow/CoverFlowView;->access$4(Limagecoverflow/CoverFlowView;)F

    move-result v1

    iget-object v2, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v2}, Limagecoverflow/CoverFlowView;->access$2(Limagecoverflow/CoverFlowView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 195
    iget-object v1, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v1}, Limagecoverflow/CoverFlowView;->access$4(Limagecoverflow/CoverFlowView;)F

    move-result v2

    iget-object v3, p0, Limagecoverflow/CoverFlowView$1;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v3}, Limagecoverflow/CoverFlowView;->access$2(Limagecoverflow/CoverFlowView;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Limagecoverflow/CoverFlowView;->access$3(Limagecoverflow/CoverFlowView;F)V

    goto :goto_1
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 212
    return-void
.end method
