.class Lcom/android/launcher4/PaintCache;
.super Lcom/android/launcher4/SoftReferenceThreadLocal;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher4/SoftReferenceThreadLocal",
        "<",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/launcher4/SoftReferenceThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher4/PaintCache;->initialValue()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method
