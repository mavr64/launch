.class Lcom/syu/log/LogPreview$2;
.super Ljava/lang/Object;
.source "LogPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/log/LogPreview;->showLogLine(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/log/LogPreview;


# direct methods
.method constructor <init>(Lcom/syu/log/LogPreview;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/log/LogPreview$2;->this$0:Lcom/syu/log/LogPreview;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/syu/log/LogPreview$2;->this$0:Lcom/syu/log/LogPreview;

    iget-object v0, v0, Lcom/syu/log/LogPreview;->logPreview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/syu/log/LogPreview$2;->this$0:Lcom/syu/log/LogPreview;

    iget-object v1, v1, Lcom/syu/log/LogPreview;->logs:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method
