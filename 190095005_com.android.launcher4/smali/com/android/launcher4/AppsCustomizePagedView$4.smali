.class Lcom/android/launcher4/AppsCustomizePagedView$4;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/AppsCustomizePagedView;->beginDragging(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher4/AppsCustomizePagedView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/AppsCustomizePagedView$4;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView$4;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher4/AppsCustomizePagedView;->access$0(Lcom/android/launcher4/AppsCustomizePagedView;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getDragController()Lcom/android/launcher4/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView$4;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizePagedView;->resetDrawableState()V

    .line 975
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView$4;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher4/AppsCustomizePagedView;->access$0(Lcom/android/launcher4/AppsCustomizePagedView;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->enterSpringLoadedDragMode()V

    .line 977
    :cond_0
    return-void
.end method
