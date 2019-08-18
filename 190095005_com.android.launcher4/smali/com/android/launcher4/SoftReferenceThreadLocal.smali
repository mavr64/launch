.class abstract Lcom/android/launcher4/SoftReferenceThreadLocal;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/android/launcher4/SoftReferenceThreadLocal;, "Lcom/android/launcher4/SoftReferenceThreadLocal<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/SoftReferenceThreadLocal;->mThreadLocal:Ljava/lang/ThreadLocal;

    .line 40
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/android/launcher4/SoftReferenceThreadLocal;, "Lcom/android/launcher4/SoftReferenceThreadLocal<TT;>;"
    iget-object v3, p0, Lcom/android/launcher4/SoftReferenceThreadLocal;->mThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 51
    .local v2, "reference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    if-nez v2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/launcher4/SoftReferenceThreadLocal;->initialValue()Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/android/launcher4/SoftReferenceThreadLocal;->mThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v1, v0

    .line 61
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v1

    .line 56
    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 57
    .restart local v0    # "obj":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/android/launcher4/SoftReferenceThreadLocal;->initialValue()Ljava/lang/Object;

    move-result-object v0

    .line 59
    iget-object v3, p0, Lcom/android/launcher4/SoftReferenceThreadLocal;->mThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    move-object v1, v0

    .line 61
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    .restart local v1    # "obj":Ljava/lang/Object;, "TT;"
    goto :goto_0
.end method

.method abstract initialValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/android/launcher4/SoftReferenceThreadLocal;, "Lcom/android/launcher4/SoftReferenceThreadLocal<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/launcher4/SoftReferenceThreadLocal;->mThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 46
    return-void
.end method
