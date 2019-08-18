.class Lcom/android/launcher4/Launcher$42;
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$42;->this$0:Lcom/android/launcher4/Launcher;

    .line 3013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 3017
    iget-object v0, p0, Lcom/android/launcher4/Launcher$42;->this$0:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher4/Launcher;->hideHotseat(Z)V

    .line 3018
    iget-object v0, p0, Lcom/android/launcher4/Launcher$42;->this$0:Lcom/android/launcher4/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->setButtonVisible(Z)V

    .line 3019
    const-string v0, "hy"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    iget-object v0, p0, Lcom/android/launcher4/Launcher$42;->this$0:Lcom/android/launcher4/Launcher;

    sget-object v1, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/launcher4/Launcher;->showAllApps(ZLcom/android/launcher4/AppsCustomizePagedView$ContentType;Z)V

    .line 3021
    return-void
.end method
