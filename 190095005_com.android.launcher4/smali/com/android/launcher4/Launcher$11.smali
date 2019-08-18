.class Lcom/android/launcher4/Launcher$11;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/android/launcher4/Launcher$QSBScroller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field scrollY:I

.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$11;->this$0:Lcom/android/launcher4/Launcher;

    .line 2621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2622
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/Launcher$11;->scrollY:I

    return-void
.end method


# virtual methods
.method public setScrollY(I)V
    .locals 2
    .param p1, "scroll"    # I

    .prologue
    .line 2626
    iput p1, p0, Lcom/android/launcher4/Launcher$11;->scrollY:I

    .line 2628
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$0()Lcom/android/launcher4/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->isOnOrMovingToCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2629
    iget-object v0, p0, Lcom/android/launcher4/Launcher$11;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$35(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/SearchDropTargetBar;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/Launcher$11;->scrollY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/SearchDropTargetBar;->setTranslationY(F)V

    .line 2630
    iget-object v0, p0, Lcom/android/launcher4/Launcher$11;->this$0:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getQsbBar()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/Launcher$11;->scrollY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2632
    :cond_0
    return-void
.end method
