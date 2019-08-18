.class Lcom/android/launcher4/AppsCustomizeTabHost$2;
.super Ljava/lang/Object;
.source "AppsCustomizeTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/AppsCustomizeTabHost;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

.field private final synthetic val$appsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher4/AppsCustomizeTabHost;Lcom/android/launcher4/AppsCustomizePagedView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/AppsCustomizeTabHost$2;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    iput-object p2, p0, Lcom/android/launcher4/AppsCustomizeTabHost$2;->val$appsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost$2;->val$appsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    return-object v0
.end method
