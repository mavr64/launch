.class Lcom/android/launcher4/Launcher$89;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field private final synthetic val$successfulDrop:Z


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;ZLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$89;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher4/Launcher$89;->val$successfulDrop:Z

    iput-object p3, p0, Lcom/android/launcher4/Launcher$89;->val$onCompleteRunnable:Ljava/lang/Runnable;

    .line 7695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 7698
    iget-boolean v0, p0, Lcom/android/launcher4/Launcher$89;->val$successfulDrop:Z

    if-eqz v0, :cond_0

    .line 7703
    iget-object v0, p0, Lcom/android/launcher4/Launcher$89;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$58(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/AppsCustomizeTabHost;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher4/AppsCustomizeTabHost;->setVisibility(I)V

    .line 7704
    iget-object v0, p0, Lcom/android/launcher4/Launcher$89;->this$0:Lcom/android/launcher4/Launcher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher4/Launcher$89;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/Launcher;->showWorkspace(ZLjava/lang/Runnable;)V

    .line 7708
    :goto_0
    return-void

    .line 7706
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher$89;->this$0:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->exitSpringLoadedDragMode()V

    goto :goto_0
.end method
