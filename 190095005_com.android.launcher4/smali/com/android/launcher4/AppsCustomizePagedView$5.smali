.class Lcom/android/launcher4/AppsCustomizePagedView$5;
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

.field private final synthetic val$sleepMs:I


# direct methods
.method constructor <init>(Lcom/android/launcher4/AppsCustomizePagedView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/AppsCustomizePagedView$5;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    iput p2, p0, Lcom/android/launcher4/AppsCustomizePagedView$5;->val$sleepMs:I

    .line 1328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher4/AppsCustomizeAsyncTask;Lcom/android/launcher4/AsyncTaskPageData;)V
    .locals 3
    .param p1, "task"    # Lcom/android/launcher4/AppsCustomizeAsyncTask;
    .param p2, "data"    # Lcom/android/launcher4/AsyncTaskPageData;

    .prologue
    const/4 v2, 0x1

    .line 1334
    :try_start_0
    iget v0, p0, Lcom/android/launcher4/AppsCustomizePagedView$5;->val$sleepMs:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1337
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView$5;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-static {v0, p1, p2}, Lcom/android/launcher4/AppsCustomizePagedView;->access$1(Lcom/android/launcher4/AppsCustomizePagedView;Lcom/android/launcher4/AppsCustomizeAsyncTask;Lcom/android/launcher4/AsyncTaskPageData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1339
    invoke-virtual {p1}, Lcom/android/launcher4/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    invoke-virtual {p2, v2}, Lcom/android/launcher4/AsyncTaskPageData;->cleanup(Z)V

    .line 1343
    :cond_0
    return-void

    .line 1338
    :catchall_0
    move-exception v0

    .line 1339
    invoke-virtual {p1}, Lcom/android/launcher4/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1340
    invoke-virtual {p2, v2}, Lcom/android/launcher4/AsyncTaskPageData;->cleanup(Z)V

    .line 1342
    :cond_1
    throw v0

    .line 1335
    :catch_0
    move-exception v0

    goto :goto_0
.end method
