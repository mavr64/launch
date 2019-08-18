.class Lcom/android/launcher4/CellLayout$ItemConfiguration;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemConfiguration"
.end annotation


# instance fields
.field dragViewSpanX:I

.field dragViewSpanY:I

.field dragViewX:I

.field dragViewY:I

.field isSolution:Z

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/launcher4/CellLayout$CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field private savedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/launcher4/CellLayout$CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field sortedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher4/CellLayout;


# direct methods
.method private constructor <init>(Lcom/android/launcher4/CellLayout;)V
    .locals 1

    .prologue
    .line 2661
    iput-object p1, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->this$0:Lcom/android/launcher4/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2662
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    .line 2663
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    .line 2664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    .line 2665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->isSolution:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/CellLayout$ItemConfiguration;)V
    .locals 0

    .prologue
    .line 2661
    invoke-direct {p0, p1}, Lcom/android/launcher4/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher4/CellLayout;)V

    return-void
.end method


# virtual methods
.method add(Landroid/view/View;Lcom/android/launcher4/CellLayout$CellAndSpan;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "cs"    # Lcom/android/launcher4/CellLayout$CellAndSpan;

    .prologue
    .line 2683
    iget-object v0, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2684
    iget-object v0, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/launcher4/CellLayout$CellAndSpan;

    iget-object v2, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->this$0:Lcom/android/launcher4/CellLayout;

    invoke-direct {v1, v2}, Lcom/android/launcher4/CellLayout$CellAndSpan;-><init>(Lcom/android/launcher4/CellLayout;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2685
    iget-object v0, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2686
    return-void
.end method

.method area()I
    .locals 2

    .prologue
    .line 2689
    iget v0, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewSpanX:I

    iget v1, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewSpanY:I

    mul-int/2addr v0, v1

    return v0
.end method

.method restore()V
    .locals 4

    .prologue
    .line 2677
    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2680
    return-void

    .line 2677
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2678
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/CellLayout$CellAndSpan;

    iget-object v2, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/CellLayout$CellAndSpan;

    invoke-virtual {v1, v2}, Lcom/android/launcher4/CellLayout$CellAndSpan;->copy(Lcom/android/launcher4/CellLayout$CellAndSpan;)V

    goto :goto_0
.end method

.method save()V
    .locals 4

    .prologue
    .line 2670
    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2673
    return-void

    .line 2670
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2671
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/CellLayout$CellAndSpan;

    iget-object v2, p0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/CellLayout$CellAndSpan;

    invoke-virtual {v1, v2}, Lcom/android/launcher4/CellLayout$CellAndSpan;->copy(Lcom/android/launcher4/CellLayout$CellAndSpan;)V

    goto :goto_0
.end method
