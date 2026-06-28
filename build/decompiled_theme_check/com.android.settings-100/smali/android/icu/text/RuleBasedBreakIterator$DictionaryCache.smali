.class Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;
.super Ljava/lang/Object;
.source "RuleBasedBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedBreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DictionaryCache"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field fBoundary:I

.field fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

.field fFirstRuleStatusIndex:I

.field fLimit:I

.field fOtherRuleStatusIndex:I

.field fPositionInCache:I

.field fStart:I

.field fStatusIndex:I

.field final synthetic this$0:Landroid/icu/text/RuleBasedBreakIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1148
    const-class v0, Landroid/icu/text/RuleBasedBreakIterator;

    return-void
.end method

.method constructor <init>(Landroid/icu/text/RuleBasedBreakIterator;)V
    .locals 0

    .line 1326
    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 1327
    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1328
    new-instance p1, Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-direct {p1}, Landroid/icu/text/DictionaryBreakEngine$DequeI;-><init>()V

    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    return-void
.end method

.method constructor <init>(Landroid/icu/text/RuleBasedBreakIterator;Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;)V
    .locals 0

    .line 1336
    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1338
    :try_start_0
    iget-object p1, p2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {p1}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/DictionaryBreakEngine$DequeI;

    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    iget p1, p2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1344
    iget p1, p2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    .line 1345
    iget p1, p2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    .line 1346
    iget p1, p2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    .line 1347
    iget p1, p2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    .line 1348
    iget p1, p2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1349
    iget p1, p2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    return-void

    :catch_0
    move-exception p0

    .line 1341
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method following(I)Z
    .locals 5

    .line 1160
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_5

    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    if-ge p1, v0, :cond_0

    goto :goto_1

    .line 1168
    :cond_0
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    const/4 v3, 0x1

    if-ltz v0, :cond_2

    iget-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    invoke-virtual {v0, v4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 1169
    iget p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    add-int/2addr p1, v3

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1170
    iget p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1171
    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    return v2

    .line 1174
    :cond_1
    iget-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    invoke-virtual {p1, v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result p1

    .line 1176
    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1177
    iget p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    return v3

    .line 1183
    :cond_2
    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    :goto_0
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    iget-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1184
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    invoke-virtual {v0, v4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result v0

    if-le v0, p1, :cond_3

    .line 1186
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1187
    iget p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    return v3

    .line 1183
    :cond_3
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    goto :goto_0

    .line 1194
    :cond_4
    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    return v2

    .line 1161
    :cond_5
    :goto_1
    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    return v2
.end method

.method populateDictionary(IIII)V
    .locals 8

    sub-int v0, p2, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 1253
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->reset()V

    .line 1254
    iput p3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    .line 1255
    iput p4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    .line 1268
    iget-object p3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {p3}, Landroid/icu/text/RuleBasedBreakIterator;->access$000(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 1269
    iget-object p3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {p3}, Landroid/icu/text/RuleBasedBreakIterator;->access$000(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object p3

    invoke-static {p3}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result p3

    .line 1270
    iget-object p4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object p4, p4, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object p4, p4, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/Trie2;

    invoke-virtual {p4, p3}, Landroid/icu/impl/Trie2;->get(I)I

    move-result p4

    int-to-short p4, p4

    const/4 v0, 0x0

    move v1, v0

    .line 1273
    :goto_0
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v2}, Landroid/icu/text/RuleBasedBreakIterator;->access$000(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    if-ge v2, p2, :cond_1

    and-int/lit16 p4, p4, 0x4000

    if-nez p4, :cond_1

    .line 1274
    iget-object p3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {p3}, Landroid/icu/text/RuleBasedBreakIterator;->access$000(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object p3

    invoke-static {p3}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    move-result p3

    .line 1275
    iget-object p4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object p4, p4, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object p4, p4, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/Trie2;

    invoke-virtual {p4, p3}, Landroid/icu/impl/Trie2;->get(I)I

    move-result p4

    :goto_1
    int-to-short p4, p4

    goto :goto_0

    :cond_1
    if-lt v2, p2, :cond_5

    if-lez v1, :cond_4

    .line 1303
    iget-object p3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {p3, v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result p3

    if-ge p1, p3, :cond_2

    .line 1308
    iget-object p3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {p3, p1}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->offer(I)V

    .line 1310
    :cond_2
    iget-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {p1}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result p1

    if-le p2, p1, :cond_3

    .line 1311
    iget-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {p1, p2}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1313
    :cond_3
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1315
    iget-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {p1, v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result p1

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    .line 1316
    iget-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {p1}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result p1

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    :cond_4
    return-void

    .line 1283
    :cond_5
    iget-object p4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {p4, p3}, Landroid/icu/text/RuleBasedBreakIterator;->access$100(Landroid/icu/text/RuleBasedBreakIterator;I)Landroid/icu/text/LanguageBreakEngine;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1288
    iget-object p3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {p3}, Landroid/icu/text/RuleBasedBreakIterator;->access$000(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v3

    iget-object p3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {p3}, Landroid/icu/text/RuleBasedBreakIterator;->access$200(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v6

    iget-object v7, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    move v4, p1

    move v5, p2

    invoke-interface/range {v2 .. v7}, Landroid/icu/text/LanguageBreakEngine;->findBreaks(Ljava/text/CharacterIterator;IIILandroid/icu/text/DictionaryBreakEngine$DequeI;)I

    move-result p3

    add-int/2addr v1, p3

    .line 1292
    :cond_6
    iget-object p3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {p3}, Landroid/icu/text/RuleBasedBreakIterator;->access$000(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object p3

    invoke-static {p3}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result p3

    .line 1293
    iget-object p4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object p4, p4, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object p4, p4, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/Trie2;

    invoke-virtual {p4, p3}, Landroid/icu/impl/Trie2;->get(I)I

    move-result p4

    goto :goto_1
.end method

.method preceding(I)Z
    .locals 5

    .line 1199
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le p1, v0, :cond_8

    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    if-le p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    .line 1205
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1206
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1212
    :cond_1
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    if-lez v0, :cond_3

    iget-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    invoke-virtual {v0, v4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 1213
    iget p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1214
    iget-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    invoke-virtual {p1, v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result p1

    .line 1216
    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1217
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    if-ne p1, v0, :cond_2

    iget p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    goto :goto_0

    :cond_2
    iget p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    :goto_0
    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    return v3

    .line 1221
    :cond_3
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    if-nez v0, :cond_4

    .line 1222
    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    return v1

    .line 1226
    :cond_4
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    :goto_1
    sub-int/2addr v0, v3

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    if-ltz v0, :cond_7

    .line 1227
    iget-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v4, v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result v0

    if-ge v0, p1, :cond_6

    .line 1229
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1230
    iget p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    if-ne v0, p1, :cond_5

    iget p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    goto :goto_2

    :cond_5
    iget p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    :goto_2
    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    return v3

    .line 1226
    :cond_6
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    goto :goto_1

    .line 1235
    :cond_7
    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    return v1

    .line 1200
    :cond_8
    :goto_3
    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    return v1
.end method

.method reset()V
    .locals 1

    const/4 v0, -0x1

    .line 1151
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    const/4 v0, 0x0

    .line 1152
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    .line 1153
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    .line 1154
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    .line 1155
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    .line 1156
    iget-object p0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {p0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->removeAllElements()V

    return-void
.end method
