.class public Lcom/android/settings/BaseFragment;
.super Landroid/preference/PreferenceFragment;
.source "BaseFragment.java"


# static fields
.field public static final EXTRA_SHOW_TITLE_BACK_BTN:Ljava/lang/String; = "show_title_back_btn"

.field private static final LAUNCH_PAGE_KEY:Ljava/lang/String; = "launchPage"

.field public static final STATIC_TAG:Ljava/lang/String; = "BaseFragment"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected _mActivity:Landroid/app/Activity;

.field protected mBackView:Landroid/widget/ImageView;

.field protected mContext:Landroid/content/Context;

.field protected mFinishing:Z

.field protected mFragmentNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFromSecurityCenter:Z

.field protected mIsExtDisplayConnected:Z

.field protected mIsExtDisplaying:Z

.field protected mIsLandScreen:Z

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mPcModeObserver:Landroid/database/ContentObserver;

.field protected mRightBtn:Lsmartisanos/widget/SmartisanButton;

.field protected mRootView:Landroid/view/View;

.field private mStatusBarObserver:Ljava/util/Observer;

.field private mStatusBarTintView:Landroid/view/View;

.field protected mTitleResId:I

.field protected mTitleView:Lsmartisanos/widget/TitleBar;

.field public mTransactionAnimEnd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/BaseFragment;->mFragmentNames:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BaseFragment;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->mStatusBarTintView:Landroid/view/View;

    return-object p0
.end method

.method private monitorExtDisplayStatus()V
    .locals 3

    .line 134
    new-instance v0, Lcom/android/settings/BaseFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BaseFragment$2;-><init>(Lcom/android/settings/BaseFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BaseFragment;->mPcModeObserver:Landroid/database/ContentObserver;

    .line 144
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "global_pc_mode_settings"

    .line 145
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/BaseFragment;->mPcModeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 144
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setTitleByBundle()V
    .locals 3

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    .line 372
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    invoke-virtual {p0, v1}, Lsmartisanos/widget/TitleBar;->setCenterText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    const-string/jumbo v2, "title_id"

    .line 376
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 378
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    invoke-virtual {p0, v0}, Lsmartisanos/widget/TitleBar;->setCenterText(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setupTitleBackBtnText()V
    .locals 5

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const/4 v1, 0x1

    const-string/jumbo v2, "show_title_back_btn"

    .line 342
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/android/settings/BaseFragment;->mBackView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const-string v1, "launchPage"

    .line 345
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 346
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/StepBackUtils;->getStepBackList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BaseFragment;->mFragmentNames:Ljava/util/List;

    .line 348
    :cond_2
    invoke-static {p0}, Lme/yokeyword/fragmentation/SupportHelper;->getPreFragment(Landroid/app/Fragment;)Lme/yokeyword/fragmentation/ISupportFragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/BaseFragment;

    if-nez v1, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    .line 349
    :cond_3
    invoke-virtual {v1}, Lcom/android/settings/BaseFragment;->getTitleName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "back_text_id"

    .line 350
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v1, :cond_4

    iget v1, v1, Lcom/android/settings/BaseFragment;->mTitleResId:I

    if-lez v1, :cond_4

    .line 351
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    const-string v1, "back_text"

    .line 353
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v2, :cond_5

    .line 355
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 357
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 358
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 360
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 359
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public addTransparentHeaderFooter(Landroid/widget/ListView;)V
    .locals 2

    .line 506
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/settings/Utils;->inflateListTransparentHeader(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 508
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {p0, p1, v1}, Lcom/android/settings/Utils;->inflateListTransparentHeader(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 294
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->mRootView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 298
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisan/appbaselayer/quality/NullSafe;->nonNull(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 295
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "fragment must inflater layout in onCreateView firstly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finish()V
    .locals 1

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/BaseFragment;->mFinishing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 426
    iput-boolean v0, p0, Lcom/android/settings/BaseFragment;->mFinishing:Z

    .line 427
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 428
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->hideInputMethod(Landroid/app/Activity;)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " finish"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseFragment"

    invoke-static {v0, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getApplication()Landroid/app/Application;
    .locals 0

    .line 447
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method

.method protected getApplicationContext()Landroid/content/Context;
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutInflaterEx()Landroid/view/LayoutInflater;
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method protected getMainLooper()Landroid/os/Looper;
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getRootViewLayoutResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "layout_inflater"

    .line 436
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 439
    :cond_0
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected getTitleName()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 387
    :cond_0
    invoke-virtual {p0}, Lsmartisanos/widget/TitleBar;->getTitleView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 389
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 391
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getTitleView()Lsmartisanos/widget/TitleBar;
    .locals 0

    .line 494
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    return-object p0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0
.end method

.method protected getWindowManager()Landroid/view/WindowManager;
    .locals 0

    .line 482
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    return-object p0
.end method

.method protected hasWindowFocus()Z
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 153
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->onSpeechTitleForAccessibility()V

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onActivityCreated"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseFragment"

    invoke-static {v0, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/android/settings/BaseFragment;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/BaseFragment;->mIsLandScreen:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/BaseFragment;->mIsExtDisplaying:Z

    if-eqz p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRootView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/android/settings/BaseFragment;->mRootView:Landroid/view/View;

    const v0, 0x7f0a06e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    .line 160
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scrollView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 163
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/android/settings/BaseFragment;->mRootView:Landroid/view/View;

    const v0, 0x7f0a06e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 167
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 169
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0701c3

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 p0, 0x1

    .line 171
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 172
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .line 94
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAttach"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFragment"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    .line 97
    iget-object p1, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BaseFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 98
    iget-object p1, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BaseFragment;->mContext:Landroid/content/Context;

    .line 99
    iget-object p1, p0, Lcom/android/settings/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/smartisan/appbaselayer/SMBaseApi;->isSmartisanPCMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/BaseFragment;->mIsExtDisplaying:Z

    .line 100
    iget-object p1, p0, Lcom/android/settings/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "global_pc_mode_settings"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/BaseFragment;->mIsExtDisplayConnected:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    iget-object p1, p0, Lcom/android/settings/BaseFragment;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {p1}, Lcom/android/settings/Utils;->isExtLandScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/BaseFragment;->mIsLandScreen:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 109
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onCreate"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p1, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/android/settings/BaseActivity;

    iget-boolean p1, p1, Lcom/android/settings/BaseActivity;->mFromSecurityCenter:Z

    iput-boolean p1, p0, Lcom/android/settings/BaseFragment;->mFromSecurityCenter:Z

    .line 112
    iget-boolean p1, p0, Lcom/android/settings/BaseFragment;->mFromSecurityCenter:Z

    if-eqz p1, :cond_0

    .line 113
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/BaseFragment;->mStatusBarTintView:Landroid/view/View;

    .line 114
    iget-object p1, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BaseFragment;->mStatusBarTintView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/Utils;->setTranslucentStatus(Landroid/content/Context;Landroid/view/Window;Landroid/view/View;Z)V

    .line 115
    new-instance p1, Lcom/android/settings/BaseFragment$1;

    invoke-direct {p1, p0}, Lcom/android/settings/BaseFragment$1;-><init>(Lcom/android/settings/BaseFragment;)V

    iput-object p1, p0, Lcom/android/settings/BaseFragment;->mStatusBarObserver:Ljava/util/Observer;

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->shouldMonitorExtDisplayStatus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;->monitorExtDisplayStatus()V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onCreateView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFragment"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getRootViewLayoutResId()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p3, 0x0

    .line 242
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BaseFragment;->mRootView:Landroid/view/View;

    .line 243
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onCreateView()V
    .locals 1

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onCreateView"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseFragment"

    invoke-static {v0, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 276
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->mStatusBarObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 279
    invoke-static {}, Lcom/android/settings/CustomizedStatusBarHelp;->getInstance()Lcom/android/settings/CustomizedStatusBarHelp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BaseFragment;->mStatusBarObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/android/settings/CustomizedStatusBarHelp;->deleteObserver(Ljava/util/Observer;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->mPcModeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/BaseFragment;->mPcModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onDestroyView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFragment"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 270
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onDetach"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseFragment"

    invoke-static {v0, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onExtDisplayChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 225
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onPause"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseFragment"

    invoke-static {v0, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 204
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFragment"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-boolean v0, p0, Lcom/android/settings/BaseFragment;->mFromSecurityCenter:Z

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->mBackView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f0805fd

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    const v1, 0x7f06010d

    if-eqz v0, :cond_1

    const v2, 0x7f0805fe

    .line 211
    invoke-virtual {v0, v2}, Lsmartisanos/widget/SmartisanButton;->setBackgroundResource(I)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lsmartisanos/widget/SmartisanButton;->setTextColor(I)V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/TitleBar;->setCenterTextColor(I)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    invoke-virtual {v0}, Lsmartisanos/widget/TitleBar;->getShadowView()Landroid/view/View;

    move-result-object v0

    const v1, 0x202008a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BaseFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    iget-object v3, p0, Lcom/android/settings/BaseFragment;->mStatusBarTintView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/BaseFragment;->mStatusBarObserver:Ljava/util/Observer;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/settings/BaseActivity;->checkFromSecurityCenter(Landroid/app/Activity;Landroid/view/Window;Lsmartisanos/widget/TitleBar;Landroid/view/View;Ljava/util/Observer;)V

    :cond_2
    return-void
.end method

.method protected onSpeechTitleForAccessibility()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getTitleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 198
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onStart"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseFragment"

    invoke-static {v0, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onStop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFragment"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseFragment;->setupTitleView(Landroid/view/View;)V

    return-void
.end method

.method protected registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected replacePreFragment()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected sendBroadcast(Landroid/content/Intent;)V
    .locals 0

    .line 502
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setFinishing(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/android/settings/BaseFragment;->mFinishing:Z

    return-void
.end method

.method protected setStatusBarWhiteBg(Z)V
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/android/settings/BaseActivity;

    invoke-virtual {p0, p1}, Lcom/android/settings/BaseActivity;->setStatusBarWhiteBg(Z)V

    return-void
.end method

.method protected setTitle(I)V
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    if-eqz p0, :cond_0

    .line 303
    invoke-virtual {p0, p1}, Lsmartisanos/widget/TitleBar;->setCenterText(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 490
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lsmartisanos/widget/TitleBar;->setCenterText(Ljava/lang/String;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 187
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->setUserVisibleHint(Z)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " setUserVisibleHint "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseFragment"

    invoke-static {p1, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setupTitleView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0a0b

    .line 308
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/TitleBar;

    iput-object p1, p0, Lcom/android/settings/BaseFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    .line 309
    iget-object p1, p0, Lcom/android/settings/BaseFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    if-nez p1, :cond_0

    return-void

    .line 311
    :cond_0
    iget v0, p0, Lcom/android/settings/BaseFragment;->mTitleResId:I

    if-lez v0, :cond_1

    .line 312
    invoke-virtual {p1, v0}, Lsmartisanos/widget/TitleBar;->setCenterText(I)V

    .line 314
    :cond_1
    iget-object p1, p0, Lcom/android/settings/BaseFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    invoke-virtual {p1}, Lsmartisanos/widget/TitleBar;->removeAllLeftViews()V

    .line 315
    iget-object p1, p0, Lcom/android/settings/BaseFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    const v0, 0x20200a4

    invoke-virtual {p1, v0}, Lsmartisanos/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BaseFragment;->mBackView:Landroid/widget/ImageView;

    .line 316
    iget-object p1, p0, Lcom/android/settings/BaseFragment;->mBackView:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settings/BaseFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/BaseFragment$3;-><init>(Lcom/android/settings/BaseFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object p1, p0, Lcom/android/settings/BaseFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    iget-boolean v0, p0, Lcom/android/settings/BaseFragment;->mIsExtDisplaying:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lsmartisanos/widget/TitleBar;->setShadowVisible(Z)V

    .line 333
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;->setupTitleBackBtnText()V

    .line 334
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;->setTitleByBundle()V

    return-void
.end method

.method protected shouldMonitorExtDisplayStatus()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "fragment not attached, failed to start activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getTitleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getTitleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "back_text"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
