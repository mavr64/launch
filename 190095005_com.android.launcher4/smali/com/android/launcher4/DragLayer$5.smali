.class Lcom/android/launcher4/DragLayer$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/DragLayer;->fadeOutDragView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/DragLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher4/DragLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/DragLayer$5;->this$0:Lcom/android/launcher4/DragLayer;

    .line 823
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/launcher4/DragLayer$5;->this$0:Lcom/android/launcher4/DragLayer;

    invoke-static {v0}, Lcom/android/launcher4/DragLayer;->access$0(Lcom/android/launcher4/DragLayer;)Lcom/android/launcher4/DragView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/launcher4/DragLayer$5;->this$0:Lcom/android/launcher4/DragLayer;

    invoke-static {v0}, Lcom/android/launcher4/DragLayer;->access$4(Lcom/android/launcher4/DragLayer;)Lcom/android/launcher4/DragController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/DragLayer$5;->this$0:Lcom/android/launcher4/DragLayer;

    invoke-static {v1}, Lcom/android/launcher4/DragLayer;->access$0(Lcom/android/launcher4/DragLayer;)Lcom/android/launcher4/DragView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/DragController;->onDeferredEndDrag(Lcom/android/launcher4/DragView;)V

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/DragLayer$5;->this$0:Lcom/android/launcher4/DragLayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher4/DragLayer;->access$5(Lcom/android/launcher4/DragLayer;Lcom/android/launcher4/DragView;)V

    .line 829
    iget-object v0, p0, Lcom/android/launcher4/DragLayer$5;->this$0:Lcom/android/launcher4/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher4/DragLayer;->invalidate()V

    .line 830
    return-void
.end method
