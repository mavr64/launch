.class Lcom/android/launcher4/DeleteDropTarget$7;
.super Ljava/lang/Object;
.source "DeleteDropTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/DeleteDropTarget;->onFlingToDelete(Lcom/android/launcher4/DropTarget$DragObject;IILandroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/DeleteDropTarget;

.field private final synthetic val$d:Lcom/android/launcher4/DropTarget$DragObject;

.field private final synthetic val$isAllApps:Z


# direct methods
.method constructor <init>(Lcom/android/launcher4/DeleteDropTarget;ZLcom/android/launcher4/DropTarget$DragObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/DeleteDropTarget$7;->this$0:Lcom/android/launcher4/DeleteDropTarget;

    iput-boolean p2, p0, Lcom/android/launcher4/DeleteDropTarget$7;->val$isAllApps:Z

    iput-object p3, p0, Lcom/android/launcher4/DeleteDropTarget$7;->val$d:Lcom/android/launcher4/DropTarget$DragObject;

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/android/launcher4/DeleteDropTarget$7;->val$isAllApps:Z

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/launcher4/DeleteDropTarget$7;->this$0:Lcom/android/launcher4/DeleteDropTarget;

    iget-object v0, v0, Lcom/android/launcher4/DeleteDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->exitSpringLoadedDragMode()V

    .line 568
    iget-object v0, p0, Lcom/android/launcher4/DeleteDropTarget$7;->this$0:Lcom/android/launcher4/DeleteDropTarget;

    iget-object v1, p0, Lcom/android/launcher4/DeleteDropTarget$7;->val$d:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-static {v0, v1}, Lcom/android/launcher4/DeleteDropTarget;->access$0(Lcom/android/launcher4/DeleteDropTarget;Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/DeleteDropTarget$7;->this$0:Lcom/android/launcher4/DeleteDropTarget;

    iget-object v0, v0, Lcom/android/launcher4/DeleteDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getDragController()Lcom/android/launcher4/DragController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/DeleteDropTarget$7;->val$d:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/DragController;->onDeferredEndFling(Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 571
    return-void
.end method
