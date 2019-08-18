.class Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;
.super Ljava/lang/Object;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviewItemDrawingParams"
.end annotation


# instance fields
.field drawable:Landroid/graphics/drawable/Drawable;

.field overlayAlpha:I

.field scale:F

.field final synthetic this$0:Lcom/android/launcher4/FolderIcon;

.field transX:F

.field transY:F


# direct methods
.method constructor <init>(Lcom/android/launcher4/FolderIcon;FFFI)V
    .locals 0
    .param p2, "transX"    # F
    .param p3, "transY"    # F
    .param p4, "scale"    # F
    .param p5, "overlayAlpha"    # I

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->this$0:Lcom/android/launcher4/FolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput p2, p0, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 479
    iput p3, p0, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 480
    iput p4, p0, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 481
    iput p5, p0, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    .line 482
    return-void
.end method
