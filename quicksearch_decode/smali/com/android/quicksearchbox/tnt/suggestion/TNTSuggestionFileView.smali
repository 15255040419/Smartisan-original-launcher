.class public Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;
.super Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;
.source "TNTSuggestionFileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$c;
    }
.end annotation


# static fields
.field public static final E:Ljava/lang/String;


# instance fields
.field public A:Landroid/view/View;

.field public B:Landroid/view/View;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/TextView;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const-string v0, "\\\\"

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->E:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->y:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->x:Ljava/lang/String;

    return-object p0
.end method

.method private setIcon1(Ljava/lang/String;)V
    .locals 2

    const-string v0, "IMAGE"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/p;->a(Landroid/content/Context;)Lb/a/a/n1/p;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->u:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1}, Lb/a/a/n1/p;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->u:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lb/a/a/l1/g/a;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 2
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->E:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    .line 5
    new-instance v0, Lb/a/a/n1/o;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lb/a/a/n1/o;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f05012e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lb/a/a/n1/o;->a(Ljava/lang/String;IZ)Lb/a/a/n1/o;

    .line 7
    invoke-virtual {v0}, Lb/a/a/n1/o;->a()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->z:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->z:Landroid/view/View;

    const v0, 0x7f070133

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 11
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->z:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne v1, p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->z:Landroid/view/View;

    const v0, 0x7f070132

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->A:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->A:Landroid/view/View;

    const v0, 0x7f070136

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->A:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne v1, p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->A:Landroid/view/View;

    const v0, 0x7f070135

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->a(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->setText1(Ljava/lang/CharSequence;)V

    .line 2
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->y:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->x:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->y:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->x:Ljava/lang/String;

    invoke-static {p1, p2}, Lb/a/a/l1/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->setIcon1(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->z:Landroid/view/View;

    new-instance p2, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$a;

    invoke-direct {p2, p0}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$a;-><init>(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->A:Landroid/view/View;

    new-instance p2, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$b;

    invoke-direct {p2, p0}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$b;-><init>(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance p1, Lb/a/a/l1/h/c;

    invoke-direct {p1, p0}, Lb/a/a/l1/h/c;-><init>(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic d(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->y:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->x:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Open file fails"

    .line 8
    invoke-static {v0, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 10
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->y:Ljava/lang/String;

    const-string v1, "suggest_text_1"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->x:Ljava/lang/String;

    const-string v1, "suggest_text_2"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->y:Ljava/lang/String;

    const-string v1, "suggest_icon_1"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "suggest_intent_extra_data"

    const-string v1, "FILE"

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "suggest_intent_action"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "suggest_access_time"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/quicksearchbox/data/QsbProvider;->f:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->C:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->D:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->B:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->C:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->D:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->B:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->onFinishInflate()V

    const v0, 0x7f080139

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->B:Landroid/view/View;

    const v0, 0x7f080120

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->z:Landroid/view/View;

    const v0, 0x7f080122

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->A:Landroid/view/View;

    const v0, 0x7f080233

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->C:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->C:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f080240

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->D:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setSelected(Z)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->B:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->C:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->D:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->B:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->C:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->D:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->B:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->C:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->D:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
