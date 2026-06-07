.class public Lb/a/a/o1/d/c;
.super Lb/a/a/o1/d/a;
.source "ViewHolderContact.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View;

.field public l:Lb/a/a/o1/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb/a/a/o1/d/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f080238

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lb/a/a/o1/d/a;->a:Landroid/widget/TextView;

    const p1, 0x7f080159

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lb/a/a/o1/d/c;->d:Landroid/widget/TextView;

    const p1, 0x7f080163

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lb/a/a/o1/d/c;->e:Landroid/widget/TextView;

    const p1, 0x7f080128

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lb/a/a/o1/d/c;->f:Landroid/widget/TextView;

    const p1, 0x7f080252

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lb/a/a/o1/d/c;->g:Landroid/widget/TextView;

    const p1, 0x7f08011c

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/o1/d/c;->h:Landroid/view/View;

    const p1, 0x7f08006a

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/o1/d/c;->i:Landroid/view/View;

    const p1, 0x7f08006e

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/o1/d/c;->j:Landroid/view/View;

    const p1, 0x7f080066

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/o1/d/c;->k:Landroid/view/View;

    .line 11
    iget-object p1, p0, Lb/a/a/o1/d/c;->h:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lb/a/a/o1/d/c;->j:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lb/a/a/o1/d/c;->k:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lb/a/a/o1/d/c;->i:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lb/a/a/o1/d/c;->h:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    .line 41
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "lookup"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, ""

    if-nez p0, :cond_0

    return-object p1

    .line 43
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 44
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 46
    throw p1
.end method

.method public static synthetic a(Lb/a/a/o1/d/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/a/o1/d/c;->d()V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 1

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x8

    .line 19
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static synthetic b(Lb/a/a/o1/d/c;)Lb/a/a/o1/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/o1/d/c;->l:Lb/a/a/o1/b/b;

    return-object p0
.end method

.method public static synthetic c(Lb/a/a/o1/d/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/a/o1/d/c;->a()V

    return-void
.end method

.method public static synthetic d(Lb/a/a/o1/d/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/a/o1/d/c;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 22
    iget-object v0, p0, Lb/a/a/o1/d/c;->l:Lb/a/a/o1/b/b;

    iget-object v0, v0, Lb/a/a/o1/b/b;->a:Lsmartisanos/app/voiceassistant/ContactStruct;

    iget-object v0, v0, Lsmartisanos/app/voiceassistant/ContactStruct;->displayName:Ljava/lang/String;

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    iget-object v0, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    const v1, 0x7f1000dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    const v3, 0x7f1000ba

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v4, p0, Lb/a/a/o1/d/c;->l:Lb/a/a/o1/b/b;

    iget-object v4, v4, Lb/a/a/o1/b/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsmartisanos/app/voiceassistant/ContactStruct;

    .line 29
    iget-wide v6, v5, Lsmartisanos/app/voiceassistant/ContactStruct;->contactId:J

    iget-object v8, p0, Lb/a/a/o1/d/c;->l:Lb/a/a/o1/b/b;

    iget-object v8, v8, Lb/a/a/o1/b/b;->a:Lsmartisanos/app/voiceassistant/ContactStruct;

    iget-wide v8, v8, Lsmartisanos/app/voiceassistant/ContactStruct;->contactId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    const-string v6, "\n["

    .line 30
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lsmartisanos/app/voiceassistant/ContactStruct;->phoneLabel:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lsmartisanos/app/voiceassistant/ContactStruct;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 32
    :cond_2
    iget-object v2, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    const v3, 0x7f10016a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/plain"

    .line 34
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    .line 35
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    const v2, 0x7f100169

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 40
    invoke-static {v1, v0}, Lb/a/a/n1/h0;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/android/quicksearchbox/voice/model/IModel;Z)V
    .locals 3

    .line 2
    check-cast p2, Lb/a/a/o1/b/b;

    iput-object p2, p0, Lb/a/a/o1/d/c;->l:Lb/a/a/o1/b/b;

    .line 3
    iget-object p1, p0, Lb/a/a/o1/d/c;->l:Lb/a/a/o1/b/b;

    iget-object p1, p1, Lb/a/a/o1/b/b;->a:Lsmartisanos/app/voiceassistant/ContactStruct;

    .line 4
    iget-object p2, p0, Lb/a/a/o1/d/a;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p2, p1, Lsmartisanos/app/voiceassistant/ContactStruct;->matchName:Ljava/lang/String;

    iget-object p3, p1, Lsmartisanos/app/voiceassistant/ContactStruct;->displayName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, p2, p3, v2}, Lb/a/a/o1/d/a;->a(Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p2

    .line 6
    iget-object p3, p0, Lb/a/a/o1/d/c;->d:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lb/a/a/o1/d/c;->a(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 7
    iget-object p2, p1, Lsmartisanos/app/voiceassistant/ContactStruct;->phoneNumber:Ljava/lang/String;

    iget-object p3, p0, Lb/a/a/o1/d/c;->e:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lb/a/a/o1/d/c;->a(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 8
    iget-object p2, p1, Lsmartisanos/app/voiceassistant/ContactStruct;->numberLocationInfo:Ljava/lang/String;

    iget-object p3, p0, Lb/a/a/o1/d/c;->g:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lb/a/a/o1/d/c;->a(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 9
    iget-object p2, p1, Lsmartisanos/app/voiceassistant/ContactStruct;->phoneLabel:Ljava/lang/String;

    iget-object p3, p0, Lb/a/a/o1/d/c;->f:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lb/a/a/o1/d/c;->a(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 10
    iget-object p2, p1, Lsmartisanos/app/voiceassistant/ContactStruct;->mimeType:Ljava/lang/String;

    const-string p3, "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.profile"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    iget-object p2, p0, Lb/a/a/o1/d/c;->i:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object p2, p0, Lb/a/a/o1/d/c;->i:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :goto_1
    iget-object p1, p1, Lsmartisanos/app/voiceassistant/ContactStruct;->phoneNumber:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    iget-object p1, p0, Lb/a/a/o1/d/c;->j:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lb/a/a/o1/d/c;->k:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 16
    :cond_2
    iget-object p1, p0, Lb/a/a/o1/d/c;->j:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lb/a/a/o1/d/c;->k:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public final b()V
    .locals 6

    .line 2
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    iget-object v1, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lb/a/a/o1/d/c;->l:Lb/a/a/o1/b/b;

    iget-object v2, v2, Lb/a/a/o1/b/b;->a:Lsmartisanos/app/voiceassistant/ContactStruct;

    iget-wide v2, v2, Lsmartisanos/app/voiceassistant/ContactStruct;->contactId:J

    .line 3
    invoke-static {v1, v2, v3}, Lb/a/a/o1/d/c;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lb/a/a/o1/d/c;->l:Lb/a/a/o1/b/b;

    iget-object v1, v1, Lb/a/a/o1/b/b;->a:Lsmartisanos/app/voiceassistant/ContactStruct;

    iget-object v1, v1, Lsmartisanos/app/voiceassistant/ContactStruct;->displayName:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v1, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    const v2, 0x7f1000dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_0
    iget-object v2, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    const v3, 0x7f10016a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/x-vcard"

    .line 10
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    .line 11
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    .line 12
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    const v2, 0x7f100169

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 15
    invoke-static {v1, v0}, Lb/a/a/n1/h0;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final c()V
    .locals 5

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    const v3, 0x7f1001b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    const v3, 0x7f100091

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v2, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    const v3, 0x7f10016b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v2, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    const v3, 0x7f10016c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v2, Lb/a/a/o1/d/c$a;

    invoke-direct {v2, p0}, Lb/a/a/o1/d/c$a;-><init>(Lb/a/a/o1/d/c;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v2, Lb/a/a/o1/d/c$b;

    invoke-direct {v2, p0}, Lb/a/a/o1/d/c$b;-><init>(Lb/a/a/o1/d/c;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v2, Lb/a/a/o1/d/c$c;

    invoke-direct {v2, p0}, Lb/a/a/o1/d/c$c;-><init>(Lb/a/a/o1/d/c;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, Lb/a/a/o1/d/c$d;

    invoke-direct {v2, p0}, Lb/a/a/o1/d/c$d;-><init>(Lb/a/a/o1/d/c;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v2, Li/p/a;

    iget-object v3, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Li/p/a;-><init>(Landroid/content/Context;)V

    const v3, 0x7f100160

    .line 13
    invoke-virtual {v2, v3}, Li/p/a;->setTitle(I)V

    .line 14
    new-instance v3, Li/p/b;

    iget-object v4, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v0, v1}, Li/p/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Li/p/a;->a(Li/p/b;)V

    .line 15
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 2
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lb/a/a/o1/d/c;->l:Lb/a/a/o1/b/b;

    iget-object v1, v1, Lb/a/a/o1/b/b;->a:Lsmartisanos/app/voiceassistant/ContactStruct;

    iget-wide v1, v1, Lsmartisanos/app/voiceassistant/ContactStruct;->contactId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v0, 0x10008000

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lb/a/a/n1/h0;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lb/a/a/o1/d/c;->l:Lb/a/a/o1/b/b;

    iget-object v1, v1, Lb/a/a/o1/b/b;->a:Lsmartisanos/app/voiceassistant/ContactStruct;

    iget-object v1, v1, Lsmartisanos/app/voiceassistant/ContactStruct;->phoneNumber:Ljava/lang/String;

    invoke-static {p1, v1}, Lb/a/a/n1/h0;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-static {p1, v0}, Lb/a/a/n1/d$g;->a(II)V

    goto :goto_0

    .line 4
    :sswitch_1
    iget-object p1, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lb/a/a/o1/d/c;->l:Lb/a/a/o1/b/b;

    iget-object v1, v1, Lb/a/a/o1/b/b;->a:Lsmartisanos/app/voiceassistant/ContactStruct;

    iget-object v1, v1, Lsmartisanos/app/voiceassistant/ContactStruct;->phoneNumber:Ljava/lang/String;

    invoke-static {p1, v1}, Lb/a/a/n1/h0;->g(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 5
    invoke-static {p1, v0}, Lb/a/a/n1/d$g;->a(II)V

    goto :goto_0

    .line 6
    :sswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.contacts/data/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/o1/d/c;->l:Lb/a/a/o1/b/b;

    iget-object v1, v1, Lb/a/a/o1/b/b;->a:Lsmartisanos/app/voiceassistant/ContactStruct;

    iget-object v1, v1, Lsmartisanos/app/voiceassistant/ContactStruct;->dataId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.profile"

    .line 10
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 11
    iget-object v1, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x3

    .line 12
    invoke-static {p1, v0}, Lb/a/a/n1/d$g;->a(II)V

    goto :goto_0

    .line 13
    :sswitch_3
    iget-object p1, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lb/a/a/o1/d/c;->l:Lb/a/a/o1/b/b;

    iget-object v1, v1, Lb/a/a/o1/b/b;->a:Lsmartisanos/app/voiceassistant/ContactStruct;

    iget-object v1, v1, Lsmartisanos/app/voiceassistant/ContactStruct;->phoneNumber:Ljava/lang/String;

    invoke-static {p1, v1}, Lb/a/a/n1/h0;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    invoke-static {v0, v0}, Lb/a/a/n1/d$g;->a(II)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080066 -> :sswitch_3
        0x7f08006a -> :sswitch_2
        0x7f08006e -> :sswitch_1
        0x7f08011c -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08011c

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lsmartisanos/util/SidebarUtils;->isSidebarShowing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/a/o1/d/c;->l:Lb/a/a/o1/b/b;

    iget-object v2, v2, Lb/a/a/o1/b/b;->a:Lsmartisanos/app/voiceassistant/ContactStruct;

    iget-object v2, v2, Lsmartisanos/app/voiceassistant/ContactStruct;->displayName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/a/o1/d/c;->l:Lb/a/a/o1/b/b;

    iget-object v2, v2, Lb/a/a/o1/b/b;->a:Lsmartisanos/app/voiceassistant/ContactStruct;

    iget-object v2, v2, Lsmartisanos/app/voiceassistant/ContactStruct;->phoneNumber:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f07010c

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 7
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const v3, 0x7f07010d

    .line 8
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    iget-object v3, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    invoke-static {p1, v3, v1, v2, v0}, Lsmartisanos/util/SidebarUtils;->dragText(Landroid/view/View;Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lb/a/a/o1/d/c;->c()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
