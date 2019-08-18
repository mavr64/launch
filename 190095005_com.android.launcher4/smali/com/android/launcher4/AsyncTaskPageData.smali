.class Lcom/android/launcher4/AsyncTaskPageData;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/AsyncTaskPageData$Type;
    }
.end annotation


# instance fields
.field doInBackgroundCallback:Lcom/android/launcher4/AsyncTaskCallback;

.field generatedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field maxImageHeight:I

.field maxImageWidth:I

.field page:I

.field postExecuteCallback:Lcom/android/launcher4/AsyncTaskCallback;

.field sourceImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field widgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;


# direct methods
.method constructor <init>(ILjava/util/ArrayList;IILcom/android/launcher4/AsyncTaskCallback;Lcom/android/launcher4/AsyncTaskCallback;Lcom/android/launcher4/WidgetPreviewLoader;)V
    .locals 1
    .param p1, "p"    # I
    .param p3, "cw"    # I
    .param p4, "ch"    # I
    .param p5, "bgR"    # Lcom/android/launcher4/AsyncTaskCallback;
    .param p6, "postR"    # Lcom/android/launcher4/AsyncTaskCallback;
    .param p7, "w"    # Lcom/android/launcher4/WidgetPreviewLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;II",
            "Lcom/android/launcher4/AsyncTaskCallback;",
            "Lcom/android/launcher4/AsyncTaskCallback;",
            "Lcom/android/launcher4/WidgetPreviewLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/android/launcher4/AsyncTaskPageData;->page:I

    .line 87
    iput-object p2, p0, Lcom/android/launcher4/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 89
    iput p3, p0, Lcom/android/launcher4/AsyncTaskPageData;->maxImageWidth:I

    .line 90
    iput p4, p0, Lcom/android/launcher4/AsyncTaskPageData;->maxImageHeight:I

    .line 91
    iput-object p5, p0, Lcom/android/launcher4/AsyncTaskPageData;->doInBackgroundCallback:Lcom/android/launcher4/AsyncTaskCallback;

    .line 92
    iput-object p6, p0, Lcom/android/launcher4/AsyncTaskPageData;->postExecuteCallback:Lcom/android/launcher4/AsyncTaskCallback;

    .line 93
    iput-object p7, p0, Lcom/android/launcher4/AsyncTaskPageData;->widgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;

    .line 94
    return-void
.end method


# virtual methods
.method cleanup(Z)V
    .locals 4
    .param p1, "cancelled"    # Z

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/launcher4/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 99
    if-eqz p1, :cond_0

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher4/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 105
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 107
    :cond_1
    return-void

    .line 101
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/launcher4/AsyncTaskPageData;->widgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;

    iget-object v1, p0, Lcom/android/launcher4/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 102
    iget-object v1, p0, Lcom/android/launcher4/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 101
    invoke-virtual {v2, v3, v1}, Lcom/android/launcher4/WidgetPreviewLoader;->recycleBitmap(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
