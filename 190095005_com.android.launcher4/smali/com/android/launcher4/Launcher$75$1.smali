.class Lcom/android/launcher4/Launcher$75$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher$75;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/Launcher$75;

.field private final synthetic val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher$75;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$75$1;->this$1:Lcom/android/launcher4/Launcher$75;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$75$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 5203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5205
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$0()Lcom/android/launcher4/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5206
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$0()Lcom/android/launcher4/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5207
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$0()Lcom/android/launcher4/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5208
    iget-object v1, p0, Lcom/android/launcher4/Launcher$75$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 5210
    :cond_0
    return-void
.end method
