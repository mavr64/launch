.class Lcom/fyt/widget/AppListView$1;
.super Landroid/content/BroadcastReceiver;
.source "AppListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyt/widget/AppListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyt/widget/AppListView;


# direct methods
.method constructor <init>(Lcom/fyt/widget/AppListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fyt/widget/AppListView$1;->this$0:Lcom/fyt/widget/AppListView;

    .line 240
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/fyt/widget/AppListView$1;->this$0:Lcom/fyt/widget/AppListView;

    invoke-virtual {v0}, Lcom/fyt/widget/AppListView;->updateStr()V

    .line 245
    return-void
.end method
