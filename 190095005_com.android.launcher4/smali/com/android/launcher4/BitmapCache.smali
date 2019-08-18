.class Lcom/android/launcher4/BitmapCache;
.super Lcom/android/launcher4/SoftReferenceThreadLocal;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher4/SoftReferenceThreadLocal",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/launcher4/SoftReferenceThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher4/BitmapCache;->initialValue()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
