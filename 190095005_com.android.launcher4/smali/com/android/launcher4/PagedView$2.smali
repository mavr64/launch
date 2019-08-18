.class Lcom/android/launcher4/PagedView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/PagedView;->animateDragViewToOriginalPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher4/PagedView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/PagedView$2;->this$0:Lcom/android/launcher4/PagedView;

    .line 2614
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/android/launcher4/PagedView$2;->this$0:Lcom/android/launcher4/PagedView;

    invoke-static {v0}, Lcom/android/launcher4/PagedView;->access$3(Lcom/android/launcher4/PagedView;)V

    .line 2618
    return-void
.end method
