.class Lcom/android/launcher4/Launcher$103;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->removeCling(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$cling:Landroid/view/View;

.field private final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$103;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$103;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/launcher4/Launcher$103;->val$cling:Landroid/view/View;

    .line 8987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8990
    iget-object v0, p0, Lcom/android/launcher4/Launcher$103;->val$parent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$103;->val$cling:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8991
    return-void
.end method
