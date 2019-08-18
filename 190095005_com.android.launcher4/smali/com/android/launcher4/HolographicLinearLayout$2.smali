.class Lcom/android/launcher4/HolographicLinearLayout$2;
.super Ljava/lang/Object;
.source "HolographicLinearLayout.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/HolographicLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/HolographicLinearLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher4/HolographicLinearLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/HolographicLinearLayout$2;->this$0:Lcom/android/launcher4/HolographicLinearLayout;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/launcher4/HolographicLinearLayout$2;->this$0:Lcom/android/launcher4/HolographicLinearLayout;

    invoke-virtual {v0}, Lcom/android/launcher4/HolographicLinearLayout;->isFocused()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher4/HolographicLinearLayout$2;->this$0:Lcom/android/launcher4/HolographicLinearLayout;

    invoke-static {v1}, Lcom/android/launcher4/HolographicLinearLayout;->access$2(Lcom/android/launcher4/HolographicLinearLayout;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/launcher4/HolographicLinearLayout$2;->this$0:Lcom/android/launcher4/HolographicLinearLayout;

    iget-object v1, p0, Lcom/android/launcher4/HolographicLinearLayout$2;->this$0:Lcom/android/launcher4/HolographicLinearLayout;

    invoke-virtual {v1}, Lcom/android/launcher4/HolographicLinearLayout;->isFocused()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher4/HolographicLinearLayout;->access$3(Lcom/android/launcher4/HolographicLinearLayout;Z)V

    .line 78
    iget-object v0, p0, Lcom/android/launcher4/HolographicLinearLayout$2;->this$0:Lcom/android/launcher4/HolographicLinearLayout;

    invoke-virtual {v0}, Lcom/android/launcher4/HolographicLinearLayout;->refreshDrawableState()V

    .line 80
    :cond_0
    return-void
.end method
