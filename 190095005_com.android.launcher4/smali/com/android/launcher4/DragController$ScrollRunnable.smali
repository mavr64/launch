.class Lcom/android/launcher4/DragController$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/android/launcher4/DragController;


# direct methods
.method constructor <init>(Lcom/android/launcher4/DragController;)V
    .locals 0

    .prologue
    .line 845
    iput-object p1, p0, Lcom/android/launcher4/DragController$ScrollRunnable;->this$0:Lcom/android/launcher4/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 849
    iget-object v0, p0, Lcom/android/launcher4/DragController$ScrollRunnable;->this$0:Lcom/android/launcher4/DragController;

    invoke-static {v0}, Lcom/android/launcher4/DragController;->access$0(Lcom/android/launcher4/DragController;)Lcom/android/launcher4/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 850
    iget v0, p0, Lcom/android/launcher4/DragController$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/android/launcher4/DragController$ScrollRunnable;->this$0:Lcom/android/launcher4/DragController;

    invoke-static {v0}, Lcom/android/launcher4/DragController;->access$0(Lcom/android/launcher4/DragController;)Lcom/android/launcher4/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher4/DragScroller;->scrollLeft()V

    .line 855
    :goto_0
    iget-object v0, p0, Lcom/android/launcher4/DragController$ScrollRunnable;->this$0:Lcom/android/launcher4/DragController;

    invoke-static {v0, v2}, Lcom/android/launcher4/DragController;->access$1(Lcom/android/launcher4/DragController;I)V

    .line 856
    iget-object v0, p0, Lcom/android/launcher4/DragController$ScrollRunnable;->this$0:Lcom/android/launcher4/DragController;

    invoke-static {v0, v2}, Lcom/android/launcher4/DragController;->access$2(Lcom/android/launcher4/DragController;I)V

    .line 857
    iget-object v0, p0, Lcom/android/launcher4/DragController$ScrollRunnable;->this$0:Lcom/android/launcher4/DragController;

    invoke-static {v0}, Lcom/android/launcher4/DragController;->access$0(Lcom/android/launcher4/DragController;)Lcom/android/launcher4/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher4/DragScroller;->onExitScrollArea()Z

    .line 858
    iget-object v0, p0, Lcom/android/launcher4/DragController$ScrollRunnable;->this$0:Lcom/android/launcher4/DragController;

    invoke-static {v0}, Lcom/android/launcher4/DragController;->access$3(Lcom/android/launcher4/DragController;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/DragLayer;->onExitScrollArea()V

    .line 860
    iget-object v0, p0, Lcom/android/launcher4/DragController$ScrollRunnable;->this$0:Lcom/android/launcher4/DragController;

    invoke-virtual {v0}, Lcom/android/launcher4/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/launcher4/DragController$ScrollRunnable;->this$0:Lcom/android/launcher4/DragController;

    iget-object v1, p0, Lcom/android/launcher4/DragController$ScrollRunnable;->this$0:Lcom/android/launcher4/DragController;

    invoke-static {v1}, Lcom/android/launcher4/DragController;->access$4(Lcom/android/launcher4/DragController;)[I

    move-result-object v1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/launcher4/DragController$ScrollRunnable;->this$0:Lcom/android/launcher4/DragController;

    invoke-static {v2}, Lcom/android/launcher4/DragController;->access$4(Lcom/android/launcher4/DragController;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/launcher4/DragController;->access$5(Lcom/android/launcher4/DragController;II)V

    .line 866
    :cond_0
    return-void

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/DragController$ScrollRunnable;->this$0:Lcom/android/launcher4/DragController;

    invoke-static {v0}, Lcom/android/launcher4/DragController;->access$0(Lcom/android/launcher4/DragController;)Lcom/android/launcher4/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher4/DragScroller;->scrollRight()V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 869
    iput p1, p0, Lcom/android/launcher4/DragController$ScrollRunnable;->mDirection:I

    .line 870
    return-void
.end method
