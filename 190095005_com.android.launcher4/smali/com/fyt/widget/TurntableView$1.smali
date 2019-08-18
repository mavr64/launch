.class Lcom/fyt/widget/TurntableView$1;
.super Ljava/lang/Object;
.source "TurntableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyt/widget/TurntableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyt/widget/TurntableView;


# direct methods
.method constructor <init>(Lcom/fyt/widget/TurntableView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v0, v0, Lcom/fyt/widget/TurntableView;->current:I

    iget-object v1, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v1, v1, Lcom/fyt/widget/TurntableView;->temp:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v1, v1, Lcom/fyt/widget/TurntableView;->snap:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget-object v1, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v1, v1, Lcom/fyt/widget/TurntableView;->temp:I

    iget-object v2, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v2, v2, Lcom/fyt/widget/TurntableView;->current:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/fyt/widget/TurntableView;->snap:F

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v1, v0, Lcom/fyt/widget/TurntableView;->current:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v2, v2, Lcom/fyt/widget/TurntableView;->snap:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/fyt/widget/TurntableView;->current:I

    .line 49
    iget-object v0, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget-object v1, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v1, v1, Lcom/fyt/widget/TurntableView;->current:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/fyt/widget/TurntableView;->access$0(Lcom/fyt/widget/TurntableView;F)V

    .line 50
    iget-object v0, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v0, v0, Lcom/fyt/widget/TurntableView;->current:I

    iget-object v1, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v1, v1, Lcom/fyt/widget/TurntableView;->temp:I

    if-eq v0, v1, :cond_2

    .line 51
    iget-object v0, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget-object v1, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget-object v1, v1, Lcom/fyt/widget/TurntableView;->update:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/fyt/widget/TurntableView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    :cond_1
    :goto_0
    return-void

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget-object v1, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget-object v1, v1, Lcom/fyt/widget/TurntableView;->update:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/fyt/widget/TurntableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 54
    iget-object v0, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget-boolean v0, v0, Lcom/fyt/widget/TurntableView;->checked:Z

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v0, v0, Lcom/fyt/widget/TurntableView;->current:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v0, v0, Lcom/fyt/widget/TurntableView;->current:I

    iget-object v1, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v1, v1, Lcom/fyt/widget/TurntableView;->temp:I

    if-ne v0, v1, :cond_3

    .line 56
    iget-object v0, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fyt/widget/TurntableView;->checked:Z

    goto :goto_0

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v0, v0, Lcom/fyt/widget/TurntableView;->current:I

    iget-object v1, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v1, v1, Lcom/fyt/widget/TurntableView;->max:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v0, v0, Lcom/fyt/widget/TurntableView;->current:I

    iget-object v1, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v1, v1, Lcom/fyt/widget/TurntableView;->temp:I

    if-ne v0, v1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget-object v1, p0, Lcom/fyt/widget/TurntableView$1;->this$0:Lcom/fyt/widget/TurntableView;

    iget v1, v1, Lcom/fyt/widget/TurntableView;->min:I

    invoke-virtual {v0, v1}, Lcom/fyt/widget/TurntableView;->checkedWithAnim(I)V

    goto :goto_0
.end method
