.class Lcom/android/launcher4/PagedViewIcon$1;
.super Ljava/lang/Object;
.source "PagedViewIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/PagedViewIcon;->resetDrawableState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/PagedViewIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher4/PagedViewIcon;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/PagedViewIcon$1;->this$0:Lcom/android/launcher4/PagedViewIcon;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher4/PagedViewIcon$1;->this$0:Lcom/android/launcher4/PagedViewIcon;

    invoke-virtual {v0}, Lcom/android/launcher4/PagedViewIcon;->refreshDrawableState()V

    .line 124
    return-void
.end method
