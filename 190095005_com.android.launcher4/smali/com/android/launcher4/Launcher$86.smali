.class Lcom/android/launcher4/Launcher$86;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->showAppsCustomizeHelper(ZZLcom/android/launcher4/AppsCustomizePagedView$ContentType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$startAnimRunnable:Ljava/lang/Runnable;

.field private final synthetic val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Ljava/lang/Runnable;Lcom/android/launcher4/AppsCustomizeTabHost;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$86;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$86;->val$startAnimRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/launcher4/Launcher$86;->val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;

    .line 7435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 7437
    iget-object v0, p0, Lcom/android/launcher4/Launcher$86;->val$startAnimRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 7438
    iget-object v0, p0, Lcom/android/launcher4/Launcher$86;->val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizeTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 7439
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7440
    return-void
.end method
