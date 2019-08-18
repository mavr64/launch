.class Lcom/android/launcher4/BitmapFactoryOptionsCache;
.super Lcom/android/launcher4/SoftReferenceThreadLocal;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher4/SoftReferenceThreadLocal",
        "<",
        "Landroid/graphics/BitmapFactory$Options;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/launcher4/SoftReferenceThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher4/BitmapFactoryOptionsCache;->initialValue()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method
