.class Lcom/android/launcher4/PagedView$3;
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


# direct methods
.method constructor <init>(Lcom/android/launcher4/PagedView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/PagedView$3;->this$0:Lcom/android/launcher4/PagedView;

    .line 2695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2698
    iget-object v0, p0, Lcom/android/launcher4/PagedView$3;->this$0:Lcom/android/launcher4/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher4/PagedView;->onEndReordering()V

    .line 2699
    return-void
.end method
