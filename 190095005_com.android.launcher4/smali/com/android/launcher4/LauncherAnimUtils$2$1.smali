.class Lcom/android/launcher4/LauncherAnimUtils$2$1;
.super Ljava/lang/Object;
.source "LauncherAnimUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherAnimUtils$2;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/LauncherAnimUtils$2;

.field private final synthetic val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherAnimUtils$2;Landroid/view/View;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherAnimUtils$2$1;->this$1:Lcom/android/launcher4/LauncherAnimUtils$2;

    iput-object p2, p0, Lcom/android/launcher4/LauncherAnimUtils$2$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher4/LauncherAnimUtils$2$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher4/LauncherAnimUtils$2$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/LauncherAnimUtils$2$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 70
    return-void
.end method
