.class Lcom/fyt/widget/AppListView$4;
.super Ljava/lang/Object;
.source "AppListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyt/widget/AppListView;->init(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/fyt/widget/AppListView$4;->this$0:Lcom/fyt/widget/AppListView;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 167
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 138
    packed-switch p2, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 143
    :pswitch_0
    sget-object v0, Lcom/fyt/widget/AppListView;->View_AppList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sput v0, Lcom/fyt/widget/AppListView;->hide_num:I

    .line 144
    sget-object v0, Lcom/fyt/widget/AppListView;->View_AppList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/16 v1, -0x2a

    if-ge v0, v1, :cond_0

    .line 145
    sget-object v0, Lcom/fyt/widget/AppListView;->View_AppList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/fyt/widget/AppListView;->hide_num:I

    .line 146
    :cond_0
    sget-object v0, Lcom/fyt/widget/AppListView;->View_AppList:Landroid/widget/ListView;

    sget v1, Lcom/fyt/widget/AppListView;->hide_num:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 148
    const-string v0, "gdy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** kong xian getFirstVisiblePosition = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/fyt/widget/AppListView;->View_AppList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    const-string v2, "  hide_num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/fyt/widget/AppListView;->hide_num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :pswitch_1
    const-string v0, "gdy"

    const-string v1, " ** gun dong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v0, Lcom/fyt/widget/AppListView;->View_AppList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    goto :goto_0

    .line 157
    :pswitch_2
    const-string v0, "gdy"

    const-string v1, " ** chu mo hou gun dong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
