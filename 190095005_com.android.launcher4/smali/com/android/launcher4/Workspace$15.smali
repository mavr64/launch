.class Lcom/android/launcher4/Workspace$15;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Workspace;->onDropCompleted(Landroid/view/View;Lcom/android/launcher4/DropTarget$DragObject;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Workspace;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Workspace$15;->this$0:Lcom/android/launcher4/Workspace;

    .line 4531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4535
    iget-object v0, p0, Lcom/android/launcher4/Workspace$15;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v0}, Lcom/android/launcher4/Workspace;->access$0(Lcom/android/launcher4/Workspace;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/launcher4/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V

    .line 4536
    return-void
.end method
