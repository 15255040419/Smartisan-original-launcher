.class Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;
.super Lsmartisanos/widget/SearchBar$ListenerAdapter;
.source "SearchBarSmt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SearchBarSmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchBarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SearchBarSmt;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/SearchBarSmt;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-direct {p0}, Lsmartisanos/widget/SearchBar$ListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SearchBarSmt;Lcom/android/settings/widget/SearchBarSmt$1;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;-><init>(Lcom/android/settings/widget/SearchBarSmt;)V

    return-void
.end method


# virtual methods
.method public exeAnimationStart()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-virtual {v0}, Lcom/android/settings/widget/SearchBarSmt;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/widget/SearchBarSmt;->access$102(Lcom/android/settings/widget/SearchBarSmt;Z)Z

    .line 109
    iget-object p0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {p0}, Lcom/android/settings/widget/SearchBarSmt;->access$200(Lcom/android/settings/widget/SearchBarSmt;)Lcom/android/settings/widget/SearchBarSmt$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/widget/SearchBarSmt$Listener;->startSearchAnimation()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {v0}, Lcom/android/settings/widget/SearchBarSmt;->access$100(Lcom/android/settings/widget/SearchBarSmt;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object p0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {p0}, Lcom/android/settings/widget/SearchBarSmt;->access$200(Lcom/android/settings/widget/SearchBarSmt;)Lcom/android/settings/widget/SearchBarSmt$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/widget/SearchBarSmt$Listener;->endSearchAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClickCancelButton()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {v0}, Lcom/android/settings/widget/SearchBarSmt;->access$300(Lcom/android/settings/widget/SearchBarSmt;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {v0}, Lcom/android/settings/widget/SearchBarSmt;->access$400(Lcom/android/settings/widget/SearchBarSmt;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-virtual {v0}, Lcom/android/settings/widget/SearchBarSmt;->clearSearchText()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {v0}, Lcom/android/settings/widget/SearchBarSmt;->access$200(Lcom/android/settings/widget/SearchBarSmt;)Lcom/android/settings/widget/SearchBarSmt$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    iget-object p0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {p0}, Lcom/android/settings/widget/SearchBarSmt;->access$200(Lcom/android/settings/widget/SearchBarSmt;)Lcom/android/settings/widget/SearchBarSmt$Listener;

    move-result-object p0

    const-string v0, ""

    invoke-interface {p0, v0}, Lcom/android/settings/widget/SearchBarSmt$Listener;->onQueryTextChange(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onClickSearchEdit()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {v0}, Lcom/android/settings/widget/SearchBarSmt;->access$200(Lcom/android/settings/widget/SearchBarSmt;)Lcom/android/settings/widget/SearchBarSmt$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {p0}, Lcom/android/settings/widget/SearchBarSmt;->access$200(Lcom/android/settings/widget/SearchBarSmt;)Lcom/android/settings/widget/SearchBarSmt$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/widget/SearchBarSmt$Listener;->hideQuickContactView()V

    :cond_0
    return-void
.end method

.method public onClickSearchLeftIcon()V
    .locals 0

    .line 154
    invoke-super {p0}, Lsmartisanos/widget/SearchBar$ListenerAdapter;->onClickSearchLeftIcon()V

    return-void
.end method

.method public onClickSearchRightView()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {v0}, Lcom/android/settings/widget/SearchBarSmt;->access$200(Lcom/android/settings/widget/SearchBarSmt;)Lcom/android/settings/widget/SearchBarSmt$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {v0}, Lcom/android/settings/widget/SearchBarSmt;->access$200(Lcom/android/settings/widget/SearchBarSmt;)Lcom/android/settings/widget/SearchBarSmt$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/SearchBarSmt$Listener;->hideQuickContactView()V

    .line 146
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {v0}, Lcom/android/settings/widget/SearchBarSmt;->access$200(Lcom/android/settings/widget/SearchBarSmt;)Lcom/android/settings/widget/SearchBarSmt$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/SearchBarSmt$Listener;->recoverQuickBar()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {v0}, Lcom/android/settings/widget/SearchBarSmt;->access$400(Lcom/android/settings/widget/SearchBarSmt;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 149
    iget-object p0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {p0}, Lcom/android/settings/widget/SearchBarSmt;->access$500(Lcom/android/settings/widget/SearchBarSmt;)V

    return-void
.end method

.method public searchText(Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {v0}, Lcom/android/settings/widget/SearchBarSmt;->access$200(Lcom/android/settings/widget/SearchBarSmt;)Lcom/android/settings/widget/SearchBarSmt$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-virtual {v0}, Lcom/android/settings/widget/SearchBarSmt;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {p0}, Lcom/android/settings/widget/SearchBarSmt;->access$200(Lcom/android/settings/widget/SearchBarSmt;)Lcom/android/settings/widget/SearchBarSmt$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/settings/widget/SearchBarSmt$Listener;->onQueryTextChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
