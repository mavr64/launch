.class Lcom/android/launcher4/CropView$1;
.super Ljava/lang/Object;
.source "CropView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/CropView;->moveToLeft()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/CropView;


# direct methods
.method constructor <init>(Lcom/android/launcher4/CropView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/CropView$1;->this$0:Lcom/android/launcher4/CropView;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/launcher4/CropView$1;->this$0:Lcom/android/launcher4/CropView;

    invoke-virtual {v0}, Lcom/android/launcher4/CropView;->moveToLeft()V

    .line 198
    iget-object v0, p0, Lcom/android/launcher4/CropView$1;->this$0:Lcom/android/launcher4/CropView;

    invoke-virtual {v0}, Lcom/android/launcher4/CropView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 199
    return-void
.end method
