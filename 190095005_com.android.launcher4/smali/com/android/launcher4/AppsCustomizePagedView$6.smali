.class Lcom/android/launcher4/AppsCustomizePagedView$6;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Lcom/android/launcher4/AsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/AppsCustomizePagedView;->prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher4/AppsCustomizePagedView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/AppsCustomizePagedView$6;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    .line 1344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher4/AppsCustomizeAsyncTask;Lcom/android/launcher4/AsyncTaskPageData;)V
    .locals 1
    .param p1, "task"    # Lcom/android/launcher4/AppsCustomizeAsyncTask;
    .param p2, "data"    # Lcom/android/launcher4/AsyncTaskPageData;

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView$6;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    iget-object v0, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1349
    invoke-virtual {p1}, Lcom/android/launcher4/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    :goto_0
    return-void

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView$6;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-static {v0, p2}, Lcom/android/launcher4/AppsCustomizePagedView;->access$2(Lcom/android/launcher4/AppsCustomizePagedView;Lcom/android/launcher4/AsyncTaskPageData;)V

    goto :goto_0
.end method
