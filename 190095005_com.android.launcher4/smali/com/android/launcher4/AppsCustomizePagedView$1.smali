.class Lcom/android/launcher4/AppsCustomizePagedView$1;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/AppsCustomizePagedView;->onDataReady(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher4/AppsCustomizePagedView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/AppsCustomizePagedView$1;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView$1;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizePagedView;->showAllAppsCling()V

    .line 485
    return-void
.end method
