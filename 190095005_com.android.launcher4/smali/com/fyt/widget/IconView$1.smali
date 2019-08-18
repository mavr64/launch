.class Lcom/fyt/widget/IconView$1;
.super Landroid/content/BroadcastReceiver;
.source "IconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyt/widget/IconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyt/widget/IconView;


# direct methods
.method constructor <init>(Lcom/fyt/widget/IconView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fyt/widget/IconView$1;->this$0:Lcom/fyt/widget/IconView;

    .line 143
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fyt/widget/IconView$1;->this$0:Lcom/fyt/widget/IconView;

    invoke-virtual {v0}, Lcom/fyt/widget/IconView;->updateStr()V

    .line 148
    return-void
.end method
