.class Lcom/android/launcher4/PagedView$4;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/PagedView;->endReordering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/PagedView;

.field private final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher4/PagedView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/PagedView$4;->this$0:Lcom/android/launcher4/PagedView;

    iput-object p2, p0, Lcom/android/launcher4/PagedView$4;->val$onCompleteRunnable:Ljava/lang/Runnable;

    .line 2702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2704
    iget-object v0, p0, Lcom/android/launcher4/PagedView$4;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2705
    iget-object v0, p0, Lcom/android/launcher4/PagedView$4;->this$0:Lcom/android/launcher4/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher4/PagedView;->enableFreeScroll()V

    .line 2706
    return-void
.end method
