.class Lcom/android/launcher4/HolographicImageView$2;
.super Ljava/lang/Object;
.source "HolographicImageView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/HolographicImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/HolographicImageView;


# direct methods
.method constructor <init>(Lcom/android/launcher4/HolographicImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/HolographicImageView$2;->this$0:Lcom/android/launcher4/HolographicImageView;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher4/HolographicImageView$2;->this$0:Lcom/android/launcher4/HolographicImageView;

    invoke-virtual {v0}, Lcom/android/launcher4/HolographicImageView;->isFocused()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher4/HolographicImageView$2;->this$0:Lcom/android/launcher4/HolographicImageView;

    invoke-static {v1}, Lcom/android/launcher4/HolographicImageView;->access$2(Lcom/android/launcher4/HolographicImageView;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/launcher4/HolographicImageView$2;->this$0:Lcom/android/launcher4/HolographicImageView;

    iget-object v1, p0, Lcom/android/launcher4/HolographicImageView$2;->this$0:Lcom/android/launcher4/HolographicImageView;

    invoke-virtual {v1}, Lcom/android/launcher4/HolographicImageView;->isFocused()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher4/HolographicImageView;->access$3(Lcom/android/launcher4/HolographicImageView;Z)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher4/HolographicImageView$2;->this$0:Lcom/android/launcher4/HolographicImageView;

    invoke-virtual {v0}, Lcom/android/launcher4/HolographicImageView;->refreshDrawableState()V

    .line 73
    :cond_0
    return-void
.end method
