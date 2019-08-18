.class Lcom/android/launcher4/WidgetPreviewLoader$1;
.super Landroid/os/AsyncTask;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/WidgetPreviewLoader;->getPreview(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/WidgetPreviewLoader;

.field private final synthetic val$generatedPreview:Landroid/graphics/Bitmap;

.field private final synthetic val$o:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/launcher4/WidgetPreviewLoader;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/WidgetPreviewLoader$1;->this$0:Lcom/android/launcher4/WidgetPreviewLoader;

    iput-object p2, p0, Lcom/android/launcher4/WidgetPreviewLoader$1;->val$o:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher4/WidgetPreviewLoader$1;->val$generatedPreview:Landroid/graphics/Bitmap;

    .line 227
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher4/WidgetPreviewLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/launcher4/WidgetPreviewLoader$1;->this$0:Lcom/android/launcher4/WidgetPreviewLoader;

    iget-object v1, p0, Lcom/android/launcher4/WidgetPreviewLoader$1;->val$o:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher4/WidgetPreviewLoader$1;->val$generatedPreview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/android/launcher4/WidgetPreviewLoader;->access$0(Lcom/android/launcher4/WidgetPreviewLoader;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 230
    const/4 v0, 0x0

    return-object v0
.end method
