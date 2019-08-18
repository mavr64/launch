.class Lcom/android/launcher4/Launcher$46;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$46;->this$0:Lcom/android/launcher4/Launcher;

    .line 3119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 3124
    iget-object v0, p0, Lcom/android/launcher4/Launcher$46;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->firstLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 3126
    iget-object v0, p0, Lcom/android/launcher4/Launcher$46;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->firstLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3129
    :cond_0
    return-void
.end method
