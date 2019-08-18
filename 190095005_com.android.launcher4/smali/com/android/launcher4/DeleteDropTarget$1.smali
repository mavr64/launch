.class Lcom/android/launcher4/DeleteDropTarget$1;
.super Ljava/lang/Object;
.source "DeleteDropTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/DeleteDropTarget;->animateToTrashAndCompleteDrop(Lcom/android/launcher4/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/DeleteDropTarget;

.field private final synthetic val$d:Lcom/android/launcher4/DropTarget$DragObject;


# direct methods
.method constructor <init>(Lcom/android/launcher4/DeleteDropTarget;Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/DeleteDropTarget$1;->this$0:Lcom/android/launcher4/DeleteDropTarget;

    iput-object p2, p0, Lcom/android/launcher4/DeleteDropTarget$1;->val$d:Lcom/android/launcher4/DropTarget$DragObject;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/launcher4/DeleteDropTarget$1;->this$0:Lcom/android/launcher4/DeleteDropTarget;

    iget-object v1, p0, Lcom/android/launcher4/DeleteDropTarget$1;->val$d:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-static {v0, v1}, Lcom/android/launcher4/DeleteDropTarget;->access$0(Lcom/android/launcher4/DeleteDropTarget;Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 271
    iget-object v0, p0, Lcom/android/launcher4/DeleteDropTarget$1;->this$0:Lcom/android/launcher4/DeleteDropTarget;

    iget-object v0, v0, Lcom/android/launcher4/DeleteDropTarget;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher4/SearchDropTargetBar;->onDragEnd()V

    .line 274
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    .line 275
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/launcher4/DeleteDropTarget$1;->this$0:Lcom/android/launcher4/DeleteDropTarget;

    iget-object v0, v0, Lcom/android/launcher4/DeleteDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->exitSpringLoadedDragMode()V

    .line 278
    :cond_0
    return-void
.end method
